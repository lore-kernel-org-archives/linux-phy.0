Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B93BBC88E72
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 19:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHruXk9lT5rp9yZvrnC7y95l4pKlPOVOU7IYcxCYCfE=; b=Q45PPtmCidebDc
	Y53lgGvyguTCxAb81eXwTOB6uLHWnEu+gBR2HDxA+oThPW8jDGUmgIMMukzh4rzQzYn6fkN4jFkyc
	fWL6pVtDz+D4XuslG/0dmOAcItOaS+YdSeABtIw//13vQIgJrqe3vqlPZxiOXCjbDWTdvzO1+XlPe
	uYjBE0k/Fho1mO1finXtyazIrrkSBsA+B5rkyItJHM4TZ+FnXkVaeVkWN1FvhM/TgARKJ9ILhMe/g
	0PMYSIrsVsObiThGfEaS6nl0nEqL7TzbKHtnhLbYR0h+VkGjxvfs4QjMDAin/VLyBXgEvOkfuAPat
	cbmDGJQlTbsE+4Ma0s0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CQn-00000004XBP-0WT9;
	Mon, 14 Sep 2026 19:33:33 +0000
Received: from mail-pf1-x461.google.com ([2607:f8b0:4864:20::461])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CQk-00000004XAu-3R9K
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 19:33:32 +0000
Received: by mail-pf1-x461.google.com with SMTP id d2e1a72fcca58-84f3ab8750cso328119b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 12:33:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789414409; x=1790019209;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=PCqYKrJhwcMBqMVGNNFrBZCCNQBh47WyyEB7W5B1uPA=;
        b=kmucqH74mYU0TbzQjXrUsXCCheSIsXAGV37VVmIZTp9I1VsldEvxwdSE8pLE79KYrk
         dHvHZU2pX6venD1IomRb7+ax5kkVjK7S66QdVDmgVx87BIJ0t15uQOy6JgtKaWgZWMqg
         oXp3sx7XKotp1kM5NIqz5RJWbfHot79eiDHkotFQPC79tYz2XbWwxfrAwQHlBoOrSyDz
         tmZG20rebSZ98xrXZSIwZsqTLoKPBK0LN+qQ3hkKTvM4LwElkT2AlHZsiRRH6d+Siw04
         +CIG2dhXEHk+D6bS98YAGP7Xwnan3I+JR/0BtWi11bdD98M5IW0lcOTnOT0rw4I4qv1T
         7+3w==
X-Forwarded-Encrypted: i=1; AKwUvBx2tGMZCei2KQRnP2F6l7IqR3gn+2eoyeG/9wKDn2Z6HODxFlOrpsaASs45aE8oPD4PtXxXA4gqB8Q=@lists.infradead.org
X-Gm-Message-State: AFuF++mfuLrJ0gTXcubUjzCyc8mfd3Udx9PtEQ3UWgtRWufjuL9KUJae
	d+TqJ0AaL1yutRDeD4egpw8eGx1glqvkKVdVvKXocmTh6bpbA3wTHreDaf4tcYf+mth/Dy0saTl
	2eV6dbDop9D+reIU6wwwzbo/OqOt1dUrsHWaLv+3YPd8gNkmhJVt9lZjzUNL0Hp3vli7K1tdNwU
	RFXDokP6a5Y2ONcms+0/xRLLs5PNGlMNiTxX+C6j0r0aMLetpc0yMWMO0rogiE3tFbny4KJv/iP
	rfb+V0BT55b9Hc2lfw=
X-Gm-Gg: AYBFou0w5xDOElm1q17ifVfQ2AwWmhqeQ2fFgYd6Ne+Us9G9H+CaQRThT8zoECjVYVB
	4cHA62HZX0blCYHBo31yKh/5XfuhRiRJ4joq1FEDJofYxb5bEzFBabTRTV/mvykrk4tiLFau+cL
	VQ3y6vozn+kbKeUaJveZiVApmgknrwernEWtgFmth+KMB1ioBMpiqvKpPVzhR2634qvdCOBRVtb
	xI1wF3oMcJ02a5dtWWEYiu0xtehKv9OnLRa+FjPs5J8a4+PuFtz8Kl6TwTsb4eI1QzKFeUXluVX
	CDB/6iajJHAZRP9MKta10mUOOFXgdenwryv5vlw0vc8x3PWN+DfU+RrihNMefRo66M/RuQIEyiK
	QiFcRxY0gss3tVchSPZMfOVG614PNDd0mjpPr1RfgpsaAgu1Ok5IiJ3/1QBZyBLcWTAzYYOto48
	TvmVUmgSqTf5gvrlu7Ufo2C6D+8IdWoixlmA==
X-Received: by 2002:a05:6a00:4185:b0:848:3fe2:c88b with SMTP id d2e1a72fcca58-86f83940113mr9051647b3a.6.1789414409531;
        Mon, 14 Sep 2026 12:33:29 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-25.dlp.protect.broadcom.com. [144.49.247.25])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-cc4c65a557csm4171626a12.5.2026.09.14.12.33.29
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2026 12:33:29 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-530ef845909so48026871cf.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 12:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1789414408; x=1790019208; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PCqYKrJhwcMBqMVGNNFrBZCCNQBh47WyyEB7W5B1uPA=;
        b=c0KI2OoKHeut50nATtd1GZDsPdSIk00VkWvKm4Zct7QChWYyO5vNohHvtSAEobVr/8
         nijwkKK8Fgfpr8kjkCB0S4comdA8WVf/vEZttZOQAXfogig3qpBbb5LNLjq+E9q/ocNj
         YSgIrhAw0ySGNht/oJMbGBKEiGrBpMBCzoPfI=
X-Forwarded-Encrypted: i=1; AKwUvBxcUrrws+GS86cs+TWO1fnqwhMp9tCJO+urNY2WmQqil/ajcIfg63VVSjmD53fr2eGvNUK4iCk/82Q=@lists.infradead.org
X-Received: by 2002:a05:622a:2b47:b0:530:fd73:6c22 with SMTP id d75a77b69052e-5310cd28075mr78646581cf.0.1789414408428;
        Mon, 14 Sep 2026 12:33:28 -0700 (PDT)
X-Received: by 2002:a05:622a:2b47:b0:530:fd73:6c22 with SMTP id d75a77b69052e-5310cd28075mr78646031cf.0.1789414407982;
        Mon, 14 Sep 2026 12:33:27 -0700 (PDT)
Received: from [10.14.5.171] ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-9120f45adb3sm101173966d6.9.2026.09.14.12.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 12:33:27 -0700 (PDT)
Message-ID: <d43cfb62-f048-42c8-909b-79a0300790df@broadcom.com>
Date: Mon, 14 Sep 2026 12:33:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: broadcom: brcm-usb: unwind clocks on probe failure
To: Myeonghun Pak <mhun512@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ijae Kim <ae878000@gmail.com>
References: <20260913012956.16443-1-mhun512@gmail.com>
Content-Language: en-US
From: Justin Chen <justin.chen@broadcom.com>
In-Reply-To: <20260913012956.16443-1-mhun512@gmail.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_123330_864092_EA2A3BAC 
X-CRM114-Status: UNSURE (   8.15  )
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



On 9/12/26 6:29 PM, Myeonghun Pak wrote:
> brcm_usb_phy_dvr_init() enables the optional USB2 and USB3 clocks before
> creating all PHYs and acquiring the remaining probe resources.  Several
> later failures return without disabling clocks that were already enabled,
> and deferred probe retries can keep increasing their enable counts.
> 
> Track each successful clock enable and unwind only those clocks, in reverse
> order, when initialization fails.  Keep the existing successful probe path
> unchanged.  This is limited to the BCM4908 and Broadcom STB USB PHY driver.
> 
> This issue was identified during our ongoing static-analysis research while
> reviewing kernel code.
> 
> Fixes: 49859e55e364 ("phy: usb: phy-brcm-usb: Add Broadcom STB USB phy driver")
> Assisted-by: OpenAI:GPT-5.6
> Co-developed-by: Ijae Kim <ae878000@gmail.com>
> Signed-off-by: Ijae Kim <ae878000@gmail.com>
> Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
Reviewed-by: Justin Chen <justin.chen@broadcom.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
