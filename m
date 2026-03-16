Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 729FDF46456
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 12:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnb5sYEZ494e+mzgRB/CdKCXGyTaMkOWs8f28JWK/eA=; b=YGfY/dVRjdyhpP
	TF+kTYFKlYbNHsvICAIlFRz2qN8nu5ne5lvoco294Bt9hgrs4qk+zH8zC8hE3bcEzja1oNvRhwkpq
	kaS88Sj8W/N4bWES03YvoXfhuv0RPslZ7XXzRiJ+eeg2hcvqmIYrAnTGhOchIkH6617Xdpwn9xvk3
	nbfNQaRpQ8PwTMgpLo/VVAX2xmjjLEzG4At2Wcs96xVbhb3OS1e4zcLhiQaSbr1Oom0ILJaqOcJys
	CmK6POuWbyxFieQlKW4YOefx4NTaEdIpqjJLi5A+/UKJfw1lKbm8RmdeCOTwgfkRvNkA8Mm1vc/oB
	EPdWgFo9U0Moscz89AeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26g9-00000003sSH-39lK;
	Mon, 16 Mar 2026 12:04:13 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26g7-00000003sRu-488p
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 12:04:13 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b9793fa5371so205383966b.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 05:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773662650; x=1774267450; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cXZiqeg/Ax9pD8IPIWwwtJQH6u7g8vd5+THmAzzvx+k=;
        b=ZpIEcILsmYdR2DyZRrNP4GYqZKtiM6jp0BA1acSZdANkXgMaPL2fF23OM7WcFQRUCG
         YSfec8cLefH+kKGk1bUViis8j+D6mKj3AEzKs7h31Z+r0zDL1A2naRgrRnpFVYulM0yh
         RGHo5yStI321m//+eqOiFIeQzCErvPPqRlH3CeBdTL9Kk285F41OQAptkAc9ZgPQzr5g
         LrAD3ItKTrkUagK6w4LpnECxcyCziz+UijqUW556XGC4VhEgOyl4DAxPFdT8Knwb/9HE
         TqIDy7EEVV9vD38rPOhDEX/IrC3wdTBlSwdu73KlaqrNI3gZSiMHr4fisHPbNc/REijE
         DULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773662650; x=1774267450;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cXZiqeg/Ax9pD8IPIWwwtJQH6u7g8vd5+THmAzzvx+k=;
        b=Ut2jFGqOXS6Fc7Iu/N1JB6N5crNDrtKMYPyGu8eaMEZ6SzwGvhvfF6JVnzUugO8V4d
         ozxe4zu+1KkFB93AROZSiolQ52QOVSAPjypqpwO3KfdQ3+rw1vjLsZx4FXJQb79BHD4v
         CdMMTLnvGzJrTG1cptZkEMgoPhh/9/ueIrQqI1w5Y23gr5ZLdrqlIMW8kzc4cP0fASxU
         OkpTa3J5C7caaSPblX5Y43GLzakOd+GStvGFUs0hk9mcpsZq/AhtQMvU1xgrOFSGdmeL
         PhLsl5zrhBta0vNCNfaTfZmOLYuWBCEAomBg4PGpJRoTanc9wAXRM1TZGuHz04IRkCwk
         F4Sg==
X-Forwarded-Encrypted: i=1; AJvYcCX3qH+Dk9kS2druQOKf8HZ3cxRVphDe5f1mfzhD2qBKBstVFDvCGMEb7QFCu9OiFUOnG+Xdn4RKkII=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWcA1T6bCdhudSm0k0S1LP5I8sko6VZGuf7l+AGJhzdLNTzhVr
	qChr1vAsL8KNwRZRtVgkR1YaWcP5cEyG0uLUL8mo4ko2FoODkNNcNu/KIPN2Gpxw/Y0=
X-Gm-Gg: ATEYQzxWkhUni3SSc/+V6+T9sVJcuXcAx24H4T8YBSFM/a5einLY3NGc8wf4WVTVPZj
	bYaqW3GyckMO9LIy2nHEMkMAxLsEwpc89TflwyMeFBk5cmJDyObL7eduV78+nhGRPAWsLDREB09
	HjU/a5VHcscjPh/2AuoqJ9Q/DFvuDy+DZZ9bt3NYZvcnV5Lq1MWZ12RzOLuuajRNY45dDe7IUsA
	Y6pfOf1RcQhpddfIFMsUn6GCmzy0TGT16ubLIiKPblF/KcZ909+JuYczU5uW58MFk8HCuc9+D3i
	4rDJInLgvUocOzmwF/ayyataaxuitxcdcSbfI1X17/qCtIwHGiuTF6PXPH3oHRrR8TwuFO/lKaF
	nu3uCpsY8aQKAhP/pn2V9E5gUk5FS+M11x9NL/aWYzytU3kyGZa4gzPpaXivlnKiZJ59Dsjxlbk
	D8j9jTXknYEKW7Q3TQWfvoFysAyx/kKIsbjcRB
X-Received: by 2002:a17:907:1c88:b0:b97:7659:8bca with SMTP id a640c23a62f3a-b9776598f6cmr548363066b.40.1773662649653;
        Mon, 16 Mar 2026 05:04:09 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.226.115])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97d201082esm10993066b.63.2026.03.16.05.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 05:04:08 -0700 (PDT)
Message-ID: <976c8a29-bcb7-4207-9d3c-5b1f6036300b@linaro.org>
Date: Mon, 16 Mar 2026 12:04:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <55db5547-96b0-4d3a-90bf-3d2b289abaa3@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <55db5547-96b0-4d3a-90bf-3d2b289abaa3@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_050412_048964_6BCDE926 
X-CRM114-Status: UNSURE (   5.25  )
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

On 16/03/2026 10:12, Krzysztof Kozlowski wrote:
>> +		if (IS_ERR(csi2phy->pds[i])) {
> API is terrible, but it does return NULL.

Ah b******s... thanks missed that completely.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
