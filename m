Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9992C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 09:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8oWvsfVaT0IjMhCFe37FW/sjqby6Xm0Uoc9CPA8FLE=; b=kWUmLlikZHBKwz
	UNT4qGFQsbK6hUW04aHYKjICPkQhFXqqLgdgLgaiOj/9Cbggj8kC4EXuspxTrCuH5stDuAlHVdqI3
	K4M+k1Qp0tfZpy3aHMzvsLGm/gyEyGAEcfs4HgR6+ozXqNRRWf3QMPXUBnx35eE2knda9Lmhae/M/
	tMWBUYkRGrrEVP+Hrq8WjbxO2jkq0NQiUHb2AEe5a/bdsdW2K6nzr8HZ9s2fswhZEEh66xEXCy3BY
	StP2e0V8I9SlqUM4TlQ8VaKEWq8DONJ7MbNrz7fFSXHN8vk9k2MpNWjf8KrUZ8Z/c7aQqoz4Iv8cE
	PfNjRuIpr6DrdI9sY/HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6kC-00000008ycw-1Ysl;
	Tue, 21 Jul 2026 09:26:32 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6k9-00000008ycS-22py
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 09:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784625987;
	bh=qwOlDh3wsIT5fX6vsxaqNsGuhgcl5N9ULQAZJLXX7Z4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BqKvF69Fn5cA6r5TyaVHkD1Cf3atUMf7tbpaE22yDY0sTgcXw0d4JIIEgwI70da6b
	 BMOeLRB+7bMgAc9B3/MVp4XfHAETK2lXlzBt0RLLIKRIn5vveSR3YNuaGw+81g0M1Q
	 szG00ls59N59vvTh4aJYYjnUYRhuPPjXgdLeGn+x5iyvbRIlvcmsuhLXydD/BzvxB4
	 U7gZn44RcVGJ4dLfSseD+rZQWDgSg5hpj4mCnoFsWQeJHkHpafRNjs9O6suhSun9uq
	 ELaLQVaWxNHCuRdBZ2Kl6vCvouDK6R5YXfXp+UmjlZL2uWhyqNSdQ1z98xK3znGSfi
	 b6r6H9nBSw4aw==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 65B4B17E0018;
	Tue, 21 Jul 2026 11:26:26 +0200 (CEST)
Message-ID: <88da7755-5175-4f83-b302-56c3fd8dffc2@collabora.com>
Date: Tue, 21 Jul 2026 11:26:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 00/12] SPMI: Implement sub-devices and migrate drivers
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, sboyd@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
 melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
 ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com,
 konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com,
 krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
 <akz8iRW2emM7B7n7@ashevche-desk.local>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <akz8iRW2emM7B7n7@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_022629_703850_E492A403 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/7/26 15:18, Andy Shevchenko wrote:
> On Tue, Jul 07, 2026 at 01:18:17PM +0200, AngeloGioacchino Del Regno wrote:
>> Changes in v12:
>>   - Removed call to of_node_put() for failure as it's being already
>>     done in spmi_dev_release(), as pointed out by Sashiko
>>   - Fixed usage of the new helper in all users (it's too hot today, sorry)
> 
> You have send two versions in a row and effectively ignored my comment.
> What is going on? Perhaps you need to slow down, find a cool place and
> start over?
> 

Andy, yeah, sorry about that.

It got pretty hot here in Italy, and I admit I was rushing way too much with those
patches.

I'm fixing your comment and sending a v13 right now.

Thanks,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
