Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C5DC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WP/I0N9Sb8fcphoBUGw2mvPM3ekSW0RMfelrDIzpLds=; b=YW7HdCAdu0rWsX
	tU+ugrXHHdBUOoHrx4AIlmDBszJIhpmWFCkw2j7PAd9rC9fr4gpFUXgdcMEIW0fvZTxt4AJVU5B6b
	yRMz//lQwXH0tdAhfgnMXUFkbgt6FSnu3SWq+jICJOWEWXb76GOqvrdc40G/ZfI01KoOo0GNmi9Hk
	YZmC2T+FVmcegxUea9IKYl1lFzgwUp7DM8Ojcz063e4DDcTWIRPpbUfaqnweeW34BiX7KOyujb4VR
	3gmHMQQG9dbBuQyNGCD3x6C8fuJ/NA7fAtN1TRSgJkmPRolg9Wb01CrfRk+pJnw4hTwx6Dz7qhPEz
	YQD4wv61W+ROAb0ICibQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woehK-00000004ux2-31b7;
	Tue, 28 Jul 2026 10:06:06 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woehI-00000004uwc-2uYG
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:06:06 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c15d3cd51b2so465424966b.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785233163; x=1785837963; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9YUhY2kLHKMkStru04ihqtiLZEbioAB+gFNR7L1P5RY=;
        b=cLfoctomc525H3jjq9MDIMv/MAfcVC1RB38PbYKQj0KdW1c70WJajzI10C/2XnhmlP
         O9IJ/27+Bd6+eIjrFoq7unkMk06qodVtR5xWpCIP56sX8rP4mDAhCEG0i7cniR/CaIwM
         6BptU22bO4y8pB0eLXdKIKLMBBVMtJSpyoaqV9eGqUmWYCjTQvnKOmUglu+tEvfPtqWt
         QhXsc60PQlb9XXDKU6x69QaS2D3B5vLTzfBMOx21GsRCftGKAKOzsBbXhiOdKn+aa6SN
         /oYoQ1dkB0OOIT1nsj91HZY+n5/6PhDLX2GVlSA3y1cJ5Hzi7bw15waos49+vY9LzB5w
         tdtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785233163; x=1785837963;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9YUhY2kLHKMkStru04ihqtiLZEbioAB+gFNR7L1P5RY=;
        b=j9Zzg8xXLha128GbynPcgHaqbljPleFMrCwyCnOP3xeR58yeUdTf2YmyN4mrfFU8wo
         g4rdRu23LHnTdPKvxwfWOR4+aY5A6BI5OwaRLAmil/CS82AUGIp3NOL1uBSSI98IZtYE
         t/niq6O6xQm6IJb+VAxcAJVR2LysvV6YtAsBdSNqajPBqOimDlz0y2dQODBiRsZriKJh
         Mpo6J0YvFdB5CfL5zXd2nSViDoD8geyBHJaR5Cm2kMdbTjOH5Ads0G1LqtzZHHD34l2R
         JLBLvb9pESVs+gXYzUpUjWPLwY6ne1D4/I+2RJMzwUnVGP5r69OmHTXHFlJFqU5viYe4
         WUZQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq3lcVauslXRBWf3R2XB2Df1H6w9C8ZaIgzhcJdCXtAC5W/UDQdsaXPZyynpM4e5ycAS4nyaL2TjHc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxt+OuwDtxUHW0gGLhn0P6aDWzE5JzpnDf5ecvnHhq6iOz2qdRf
	iyUzv1BsqTvsDOYQakWbmDFvEyOTz0AKSntz4ZYj6a7SrVrw4SjQ8LLNnrG6gEXDiyQ=
X-Gm-Gg: AR+sD11k8FHklh00M1qrGj09EdIxL6zy4vI3evn9cG+KS6/VdA7aMXnLyaQRH9XJYL9
	0kmilBhn/VfSryBPqlSLY+wzOViL755e4bk65TqwJPx1W0fvg4Vs/giuzO5HNh/C0JcpCLV3rPc
	9kBd4EumGcF6EmhbDurNF5LdFBA1e5hUhQYYvJI3ksCCkjDhxztFceAKDsER9wTMSbpia+wB+VC
	eXOVfL9muP7Kh8a9TfY1d+CboUdPa2K+e6uxdc1WnxaNjQBGdDYKPCRtnUdy9wachIoMIM2c2M2
	KtbsTFm7ANnuWg0UuI9SInN1IsZWOA0r6uD6GaTfqStDOFybHTZgNxWC0nSOzUVsTmY04Oji8r/
	QlUO2wDBwt6ATreooJQ3Lx0kbWd4/zKokJOBs7C6Iczs3Ntqz9PbExSeIOdf/0X+Wbgl4iHdAWg
	UVa8weOFf/U1dG6g==
X-Received: by 2002:a17:906:fe4e:b0:c16:677b:4d1f with SMTP id a640c23a62f3a-c1f72489d85mr86000166b.54.1785233162679;
        Tue, 28 Jul 2026 03:06:02 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac9d79sm725854666b.21.2026.07.28.03.06.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 03:06:02 -0700 (PDT)
Message-ID: <a9eb7475-2682-4b9a-b401-6178282d34aa@linaro.org>
Date: Tue, 28 Jul 2026 11:06:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 5/5] dt-bindings: media: qcom,x1e80100-camss: Make
 vdd-csiphy supplies optional
To: sashiko-reviews@lists.linux.dev
Cc: media-ci@linuxtv.org, neil.armstrong@linaro.org, robh@kernel.org,
 devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
 <20260728094212.0F6511F000E9@smtp.kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260728094212.0F6511F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_030604_754545_92CE33AD 
X-CRM114-Status: UNSURE (   9.79  )
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

On 28/07/2026 10:42, sashiko-bot@kernel.org wrote:
> [Severity: Medium]
> Since the CSIPHY nodes are being moved out to peer nodes, do other properties
> in this schema also need to be updated to prevent validation regressions?
> 
> For example, the reg-names, clock-names, and interrupt-names in this schema
> are currently defined as strict, fixed-order arrays that expect csiphy elements
> at specific indices. If those elements are removed from the CAMSS node to avoid
> resource conflicts, won't the remaining elements shift and cause
> dt_binding_check to fail?
> 
> Additionally, the ports schema mandates data-lanes on the CAMSS endpoints.
> Is this requirement still correct for internal links between the CAMSS core
> and a peer PHY, rather than physical lanes to the sensor?

A good guess but, no - illustrative of how LLMs "understand" stuff but 
actually don't understand stuff.

If the graph lookup and probe succeeds then the legacy regs/clocks are 
never mapped by camss - if that lookup _fails_ then you absolutely need 
the legacy stuff.

"Dr Chandra will I dream" ?

"I don't know"

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
