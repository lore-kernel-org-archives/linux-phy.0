Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D77CD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 18:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=atw8vNeYWLbJpEIx4lJmaS/ULMYQSynk9zWCH/XGaKk=; b=Gt7f3bYrMfpbTm0IY96+Uz+4Rw
	UfXi6C1UWxoBTy3Z4f3c2wXNJy2qfOZKfcTh0FPeLSgHuSYQL/sdbXpBmdy5+59d5gqTjELU5qqHj
	XoAwYsdOsCOVkWphFH6dit40Dnc3sysmKXRBQPI5suT0hSoOGcIIfnUyi7NV9rp9DkLNqBOSNryUz
	J0lHIZWxvTPw92j9NJvIB07Onj4R+I0Vwz9WReOq1R2w1fiJiJMmN/YW4geEBwLLFs9jkbg1pFaj+
	s8zAu3dthutbz3Z+tCE3v2ylwg/yPYl/+zt6YUrfcDRoQQ5DWNQ4dda9jnS4EYTrLI55ttiF+IC4H
	rr6HMZVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZBx3-0000000EjAF-11qF;
	Mon, 15 Jun 2026 18:22:25 +0000
Received: from mail-yw1-x1163.google.com ([2607:f8b0:4864:20::1163])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZBwy-0000000Ej8y-1qAr
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 18:22:23 +0000
Received: by mail-yw1-x1163.google.com with SMTP id 00721157ae682-7dd5a8dc8a2so20085017b3.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 11:22:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781547738; x=1782152538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdTrLX22CnEkWs+gNLjILAm9hmOCrcbz0wPqLfmfk1c=;
        b=MsR6T4mxrGCzjrVUBhhGCqZ6rtzr91FBXwpZm0EwDYDCURC+6Uqvo8VqgAJ5rjZj73
         rvp4qepkeVtb1oQdl2XwaMRo+erHoTG4PtEwktFclUxLbRbiS3a2fVvqvZY5JjPyRjqT
         nXMzA8mQEY0vRHfwiJZAxRIwWgyeHbRBhbPZrT4QMhh7msycpOTrTOe/IYXsEtopQfni
         z8xwa4Q1ONYHLO3C2wP0u74BHzX269ww7eEcRXDUHELE2sWMiII8pGigeBjSWB1KhXd2
         FxOPpaWPN128YC+4dWTLQJeBtcM17AjTjsECBoBRzePrK645r8DnalHJOMsL1U7KSXsl
         2abw==
X-Forwarded-Encrypted: i=1; AFNElJ8NLy2jX+f85UiHt3PMIkDzDj4hFNSdYpUzNNFvdHacwe2BsbdiNA5YDU3Lgh4CjPQNSw0Pl3aLpwE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAPzey8l3enM0LAFufwiRXiwPG+Esuzytu3rV5JHPBcijlv1jA
	roODM28Y0jpW3ML5AyDglac90ExAOG88kuR6PaJULxv44FJRjJLXMEiode4W+7SvWI6mCoglxBO
	T5n4yl+IvCNonyXIYoI05n49evPtyDa3b9FL6hUGBV5KKGR443PsalrGYd9hsO/y6e5YPAuHV44
	elxnMAk2GHdyXXqGFX1KAfAg8otI3FT9k0uAmg+Ks5/m0FNb7DmWsn466qRJaxO4gEw1TOLpX4M
	cfUzK8BPHAy9hreVAg=
X-Gm-Gg: Acq92OEYkI4Gsm9c8HawWGMxN7VRCU3IInl8VQU/QiBRCoOJhj8TSsnycIiqpw2OzDr
	B+1Xn2Xb4Yo3J1q8N2MbUrrZoXOBWbFaXFPLbgi2gzCVjyzTstXkcfargywI9twOICvYlfN4ZPs
	1Ax+T+LOmu9G3Dm4pQ5uCqPBYk5ZTanIJzn2rwx9YwoRBLIy2o17SN8LQrAw82KoWX7HpEWBhOe
	ivSNvBFVK92iiD8hEQQ9Tu+WAY/0GDzU/8q/hevoWq65TcgkcbBLweqByICI/AqQrrJ8UNvU5+h
	BBcU6hRgAZouSDALDjDTzB+Nf++1FCeqwhIQh/yQs5VMVbt45nECw7X9FKXYynQ+pYCiO/TsmtZ
	R9DV6fo1ZB+nf38HLAxkm9zQz/9SF4EWQHC4oOkq0x3CVYXqUWNupEOv7TWSvntUGIZUGTo1grk
	iKbvwy1y8AUHAwRv8EaN+W44U98/a7S24sdw0h6iHtpZOVeJvRkWBuZqw=
X-Received: by 2002:a05:690c:708c:b0:7b3:3a49:752 with SMTP id 00721157ae682-7fd00367dcbmr2025937b3.41.1781547738171;
        Mon, 15 Jun 2026 11:22:18 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-18.dlp.protect.broadcom.com. [144.49.247.18])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-7fcd03cf295sm364117b3.9.2026.06.15.11.22.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2026 11:22:18 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-13980b6561dso3569761c88.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 11:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1781547737; x=1782152537; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TdTrLX22CnEkWs+gNLjILAm9hmOCrcbz0wPqLfmfk1c=;
        b=ckyp2XsAxkkNe/+kpPTDYXE4L9RaYPcf4OJbMy358bxcZpgaeA83hNHJmsUOIkqgcn
         qi5cBM5qGX87VLjkhoVBs41WD/PNoEaTvyQr79aY8o9UmvM7GTv9WUSdRhMwTiX2bdAP
         Y4l3a9fkM8pJ8ndlYI4zJk4CAmBDQY3acFEFU=
X-Forwarded-Encrypted: i=1; AFNElJ8LCQsY/beHoZ2p7Fv3pIyaCKS1zgDOpae/xNODIvLbRBc0/ucl5VTCiVu0S6Mub7C6KS1NYda9ZbA=@lists.infradead.org
X-Received: by 2002:a05:7022:23a5:b0:137:ae1d:5b58 with SMTP id a92af1059eb24-13985f0558amr104280c88.20.1781547736950;
        Mon, 15 Jun 2026 11:22:16 -0700 (PDT)
X-Received: by 2002:a05:7022:23a5:b0:137:ae1d:5b58 with SMTP id a92af1059eb24-13985f0558amr104254c88.20.1781547736357;
        Mon, 15 Jun 2026 11:22:16 -0700 (PDT)
Received: from [10.14.5.238] ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1384b96d6c4sm11427504c88.9.2026.06.15.11.22.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 11:22:15 -0700 (PDT)
Message-ID: <d759b454-26a6-4d4f-8a92-295d587dd0a8@broadcom.com>
Date: Mon, 15 Jun 2026 11:22:14 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: broadcom: brcm-usb: unwind late probe failures
To: Pengpeng Hou <pengpeng@iscas.ac.cn>, Al Cooper <alcooperx@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
Content-Language: en-US
From: Justin Chen <justin.chen@broadcom.com>
In-Reply-To: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_112220_485563_0F47B5B2 
X-CRM114-Status: UNSURE (   6.68  )
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



On 6/15/26 12:01 AM, Pengpeng Hou wrote:
> brcm_usb_phy_probe() registers a PM notifier and may create a sysfs group
> before registering the OF PHY provider. If provider registration fails,
> probe returns the error with those resources still active.
> 
> Track which optional resources were installed and remove them on the late
> provider-registration failure path. Use the same state in remove() so
> cleanup matches probe progress.
> 
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>

Reviewed-by: Justin Chen <justin.chen@broadcom.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
