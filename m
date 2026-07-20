Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F6B7C44520
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jnp8b0eoOcgS95ubvYm/dYfSQm6MYBhwc94bduJspiM=; b=4R0AtBR1FoAOTN
	F1Yt5v/DUezAtB1mjGpCWfEZIWRMKh4XJGBtIcbEsIVBJgqnMoHD09A5AvGND+AiNfKCAPPq7n1O7
	o5q1XHjcIDsHfsCa+Hs1VEEd4irLHREc5EE2PQMn72y57sbEutdK2Z66M4u2+KInkgEeMi5Qn/OO9
	SjpE48nKgJ8U9ILYIBiLIxt5GNUVhmW2gAGLGEDLk4FA1tUnq/IxZt3w2HDn8a8FAqP3zRewa6D/T
	uaG1RQkpdtDc72OCTqDhRDs6plY9RotrjoEAMdOX1is9zOgxaVgzv2UIoUZHRpa4d7Mh4h5nEhzxh
	M5ptZUyZTZ+INAQVcvsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlsqu-00000007fxq-2l3x;
	Mon, 20 Jul 2026 18:36:32 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlsqr-00000007fwx-2D70
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 18:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784572585;
	bh=HBO7t+Ert+oqgjYT9uCQMkAftwBdNildjn+bN27LNfA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SeqCtsMnLuhAfpsgzsNPXUktmJWaZm2klMDqoy0wj/pvKXCA5Khe+H2ftMXQWwAZE
	 UWWl5Ae2AsfZmiLEtH2Dwj7qnbnLQCJ3bcikmmzGQ7yCu3/1+8IyESHDFXDvw5CmO0
	 a6P7678vkaR5o0wUwPImh62lV3jEmeISBpw6n0foWhZIh4drnCsvx8DuOjSQzx12Dh
	 aJwVBBLF4RRhKr9QWAZI1lTT7sGqTM1eYMhANk96ihwIuCSzkeAXeXdkjD2Q/Nsjoe
	 qQNzIi/Dlb5oIFb6xEpD9OCEjiVmUmr7t+jtBYSEPCKV+/qGUCDp0MFkzp5PLSGMDJ
	 8dMQtRv+pHWlg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9FC7617E09AA;
	Mon, 20 Jul 2026 20:36:25 +0200 (CEST)
Message-ID: <2f2cca68-34ee-4f12-9fbc-77774a7f71d4@collabora.com>
Date: Mon, 20 Jul 2026 21:36:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/8] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: sashiko-reviews@lists.linux.dev, neil.armstrong@linaro.org,
 olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
References: <20260612-hdptx-clk-fixes-v4-2-ce5e1d456cda@collabora.com>
 <20260611235702.0E9691F000E9@smtp.kernel.org>
 <90ac7bbc-977b-432a-9f17-b7280e19d819@collabora.com>
 <al4sQ1kNriKH7hHL@umbar.lan>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <al4sQ1kNriKH7hHL@umbar.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_113629_772622_DCF541C6 
X-CRM114-Status: GOOD (  10.89  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

Thanks a lot for taking the time to review the series!

On 7/20/26 5:10 PM, Dmitry Baryshkov wrote:
> On Fri, Jun 12, 2026 at 03:18:52AM +0300, Cristian Ciocaltea wrote:
>> On 6/12/26 2:57 AM, sashiko-bot@kernel.org wrote:
>>> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
>>>
>>> Pre-existing issues:
>>> - [High] Potential integer underflow in `fout` calculation when hardware state is misconfigured, leading to a massive bogus clock rate that could hang downstream components.
>>> --
>>
>> If the hardware reached such a damaged state, the kernel is likely already encountering more serious issues.
>>
>> Regardless, I will address this in the "FRL TxFFE level control" series, which is currently blocked by this one, to avoid any further delays.
>>
> 
> With the overflow handled:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Since a new revision is needed anyway, I'll add a new patch to handle this in
v5.

Regards,
Cristian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
