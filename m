Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A230C43327
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 00:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BNKskJQOofr61tfD15VLQak7DANFxPo925gfJeawjY=; b=BGT0URJpLwzqZF
	VC/hfNTOdj3otUG7l/cR+xr2LwsOxKXkPyEe98sZN77h7b5J1Rww3NPkZVgkOcJg9lnQdGVwNFeS2
	or7QAo+HVOKkxcU3CeNWSA0efm7CZzHGw61U2rCtQfo3f+ASHa9UgPrmS2VqGpVOEoCHR+/B1j2Ij
	K/O95TPWY1gvO2hBqGjGBXK6pobUyXFhhYCb4x9eHRy3XcyHoY3CBdNdKcSFmZzSf8EA1r6kZlTDF
	OlQFPg+2hDkk6vL2ajfCy0gv6b87aUbCcEBphs2ZIoXrCk1Etuv7Eei8caYs/gUJmY5MXesBVkmWw
	lakagjMSaYZxQQrEndxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4z7-00000003Gng-467w;
	Thu, 02 Jul 2026 00:08:53 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4z5-00000003Gmw-15ih
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 00:08:52 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-493c4ce68fbso2572485e9.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 17:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782950929; x=1783555729; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PNsykQwqe+udfzbubaksG4wXVqyFa0ncqpop64TNBKw=;
        b=z2jp14zPGSjKkx/7DQyGNFTTOAXZiHaAiEfiU/GG/zntvCk2oYm7ojqT5CnruJ7uMA
         AV3nFb8qV98wN/memtcTnF6BQ3gt+XjmtJ101tNDdu0Um91TIbqxYCMDeXEyk5VnlMSP
         dXyQPwgcwbk8rQQy7pczS3g1ZLsJVN3+I6UXAsEGGGDfBXLyLqsAqpb5dzaOw5atEPj0
         1iIKFTz/jeqmWzCq7FOqDg+ZIdY/mEIyl8xUQXAu/sdvNJ1PclHtfosRz//4CHtjOpTP
         qABz5Xc7SqUFUnSLwkmSlQLJKFl0gBjFr6DUuH0lNZt33/01HByJ/Vu9JNMabLOzLRxi
         g9AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782950929; x=1783555729;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PNsykQwqe+udfzbubaksG4wXVqyFa0ncqpop64TNBKw=;
        b=JUpo2PkW9aTRZe7qD304lZXClkjx/8BhEdSEh+vagBfw5zkmHxCv0+wUbIHYFkbFxX
         pzKSkqDAIBC9Zz9JQvMw/5mVw/FgDIB2StnT+wBXinEaUEeEVWOq/g4wpQ6ZDAvSZm9d
         9wcl7WuAVvceKwPq9R62UZOf+UsCcPuCoa8QEFPhQi5FoAcn+s0XnCFhUFfIcG/BEfL/
         gyOdg2bPm57N8K0/dws3dwZBeBI64EqaZGr1kwfj8NRKEBmX93WWGZrpYW01nKgCWE0W
         QWWEGFmzhr6hcRYEIPfIUH1egXOQNFG01d9j/fOVRCH67pV6KStHkpmnDLVMxnY9IjIb
         HPlA==
X-Forwarded-Encrypted: i=1; AFNElJ+hD/dc7TCmz+uchhJwWcwjbY6CdsUOj4zttyUPmEP91pO7ZFy2WQCxT+X2vmvKKGmDrT5cLDeKP/M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwL44rTCXItpHZ7VSdb25dswd0azKBMn4ZVufhp9c6Nyrlvr4uR
	4d1nZ+VBkWhzTBRCy+wCO8gr/Kff0i4GQqz77ddHltjH9lwvQooV1LiKr2Yx26SGGyU=
X-Gm-Gg: AfdE7ck+VDpMnHPGE2FFq9jWt/GheNTLIRsSN4WckWbHHbZbj1auXfRUfzjkGOCFMtV
	vq0QYSKO1LGL+aVtuajA/bnP+8+LoXlkYpgZCfskAXTLvWxG4kHB4OuEEeBbbMU9ZbZ+IGg9Y+C
	TJXN+cCMjZUpLpM/pxQgdVvQUH+zMarrSnXiSL8fOw0gBY/BzbwhlaCjpBLlwKw4/H9MR3m+kGo
	nnOxzN/z7I55Xiw5mmUDuBulJvxoIuSxjcFYORx7E/TwuPQXI6nZfcHmnbE9wIFCQC0GNwZ439r
	zZ515NSWzvjeObi5IJqVUkdI1j6jEHVNlPdJc7qcE3LZGUtsRm0cbu2xdDs6wlcklarKzqXftOi
	DStKZ3WSupzs5tuog07F4JmZ2/7smowBrixxNkNNxOkehw0J0s67Ll3i4Gh7WOC1ADBP+Glprgd
	Mh4kMiaOct8e6LumRprz/hTTi4
X-Received: by 2002:a05:600c:8b75:b0:493:aa0a:45ad with SMTP id 5b1f17b1804b1-493c2b3ce9fmr53986115e9.2.1782950929104;
        Wed, 01 Jul 2026 17:08:49 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.66.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c637bbcfsm1790375e9.6.2026.07.01.17.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 17:08:48 -0700 (PDT)
Message-ID: <6b6492a4-7610-4dce-a81c-8dc0387a4061@linaro.org>
Date: Thu, 2 Jul 2026 01:08:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
 <ae3a381b-5697-43ee-bdfd-aaf2d22ceedf@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <ae3a381b-5697-43ee-bdfd-aaf2d22ceedf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_170851_329851_178078B1 
X-CRM114-Status: UNSURE (   8.51  )
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

On 02/07/2026 00:37, Vladimir Zapolskiy wrote:
>>
>> Inserting bus-type into the PHY layer is borrowing from one domain
>> linux-media and pushing the concept into PHYs.
> 
> It's the other way around, "bus-type" is an endpoint property of media
> devices, reference to video-interfaces.yaml to get more details about it.
> 
>> phy-cells = 1 with CPHY/DPHY specified in the consumer, as was Rob's
>> suggestion will specify the mode.
> 
> This cell is just not needed, and unneeded complexity should not be added.

I'm going to stick to Rob's initial guidance on this.

https://lore.kernel.org/linux-media/20250710230846.GA44483-robh@kernel.org/

Happy to revisit if the DT the Gods so command.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
