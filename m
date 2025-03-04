Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0EAC282D0
	for <linux-phy@archiver.kernel.org>; Tue,  4 Mar 2025 12:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LE2kjzovZ9skErkv5dGyu9YhdNX9Lb4U+974XLpkMM=; b=TZFCNUNRs+bkQM
	U6kkjru2E5qcjm0cmlblN/knupGPBloDwEYMdE0kWKWinO3hy/G2ft21r5RwTiBh3k8SfT3fiTHsL
	NbGfm96cxCS7NCGWHoz0q4e9RAn+sqbqG8UDzPsSCoDt+RSLszDkkR2z0nV3ubHY4RVC1T2ZE2+IK
	bIurFSSFVFwCPu9IH23icGhCHJx7DitnOcdPOP+Or0mCJx9o4ZJ/NZHBQc8Cpo20XJf89lUPDZQW4
	4pBL8H79xhyRYJHCTu2RJGpiqdmatBfwpFuw5tQhUt4aGUZstPjRU5/TUlWrULK+I/TjVqDUaDV+7
	vaDgvHPwUuqvpsm2vwxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRPe-00000004dsA-2eHJ;
	Tue, 04 Mar 2025 12:30:18 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRO3-00000004dbH-2RPJ;
	Tue, 04 Mar 2025 12:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741091317;
	bh=hXQr2JDc6VwEA4oybx8Hdat3clPEU6hQMlM5Zb8perI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bHuJpAX9EfysrAFIJ7eOaGldWtzuqJalISkcLY5g2SWE1mKHj9jqimeQs3+Jvcw4T
	 ZV1mKQoV93K5Ht1KNnpsCHAoy0BU3MBHK5Nq+21BJ7GwQLXNlovFdBooRbUVYMJF0+
	 Y8WMkrFaN+eEhGbUETuiDaEw5j2dwwhnbKQBw9ETrTf8vygNidVwR+NR/H0T5iSGEK
	 QpeUzBshEZA3zEGQBTxkHzCP7SnRpW7guG6rGi+X9ovR1MpfN/wyQhkJMps8NJa2jo
	 ngkL+2r1eGG0fnzr6ry9DMggnE9kDyyEt7ATTGggwWsvddy88+AcZ9FtBj+cftlAk2
	 8+axtikx2WJYA==
Received: from [192.168.1.90] (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 36ACC17E023F;
	Tue,  4 Mar 2025 13:28:37 +0100 (CET)
Message-ID: <71817739-7ecd-478d-ae57-d764e21c8dd9@collabora.com>
Date: Tue, 4 Mar 2025 14:28:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/12] phy: rockchip: samsung-hdptx: Add high color
 depth management
To: Maxime Ripard <mripard@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
 <20250304-phy-sam-hdptx-bpc-v4-10-8657847c13f7@collabora.com>
 <20250304-delicate-crazy-tuatara-5ea4d3@houat>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20250304-delicate-crazy-tuatara-5ea4d3@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_042839_808572_9D09AA81 
X-CRM114-Status: GOOD (  11.82  )
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



On 3/4/25 10:21 AM, Maxime Ripard wrote:
> On Tue, Mar 04, 2025 at 03:44:09AM +0200, Cristian Ciocaltea wrote:
>> @@ -1480,12 +1484,12 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
>>  static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
>>  					   struct phy_configure_opts_hdmi *hdmi)
>>  {
>> -	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
>> -		return -EINVAL;
>> -
>>  	u32 bit_rate = hdmi->tmds_char_rate / 100;
>>  	int i;
>>  
>> +	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
>> +		return -EINVAL;
>> +
>>  	for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
>>  		if (bit_rate == ropll_tmds_cfg[i].bit_rate)
>>  			break;
> 
> Why is that change needed?

Oh, that was supposed to be a fixup for "phy: rockchip: samsung-hdptx:
Provide config params validation support" to keep variable declaration
section on top.  Not sure how I missed it, probably I chose the wrong
commit hash while focusing on some other changes during the rebase.

Will sort this out in v5.

Thanks for spotting it,
Cristian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
