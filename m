Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3510CC71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 16:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fPxzi0WXoIigT9PDIT+4kBukzoFaoU+wNyg3OKNneM=; b=o3KPApQoH8nLXY
	bnmphhPZtlmvu1OhXIZnd+m96bFsQ2DIvewqh5YUsPSN7JPJXfy9oWC9Ob1eQ0ax9uPVO3ftTYvve
	r0l5ii1DwFpMLBlTsGFkFuLSGf3CBxT8dcIJOzN9SG0d4xNSrLdOs0vKpEYh2KO2AJc08NXZTmteu
	OdJ9ZEdPMO5JkPtx5S9cIHhPbuo6Og0CGNQncJy5ISPbNN3UQg2I+odux21SgE8cMFvV0Zj0TjNIx
	OHdIPNLDrwGhiR429ZjK+R4+OBW/qTsOTRrLTmbgemvhKeuIO3rYcQggUrg54nBttdKCxg6KTaPEw
	nOVm8ZbKxZPicn/kc5cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb1ya-00Bsz7-2v;
	Tue, 29 Aug 2023 16:54:00 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb1yX-00BsyT-2e
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 16:53:59 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-52a069edca6so6426385a12.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 09:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328034; x=1693932834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ACmQAc0Os4N98Z3d3R/oIFedpQZZYFrbAteEg6HsG0U=;
        b=I/a0kp/X+qSLU+PdEBr24kCAVtAqmcmI7BCas6WtO3JCDrAbuQynu6E54l+oTgHKmK
         c9eA+7wqka6EVKEbwNbG4+Eqrp6RkjNGXq9irM4PWeJLwjx2Dmmu7j5EJj9/FiGvCX+E
         eJ8UJdQZX7URDGf0zr+99AJigTImTySx0pabeADIk6hAtTjCqlEejLjIJjwl9LnhW+MK
         6vvbpsTmdKZKkypszJJQ3eLuoGNchTYAOIek7jVanMZN8GCYPKbq7WAsYyadiilTApNg
         QifliMykN14crqmecnBJeWWOA8mvMzoN7EbyarrOlFh2tM6SUoF1oVtk6FgUd+p7Prv8
         YC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328034; x=1693932834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ACmQAc0Os4N98Z3d3R/oIFedpQZZYFrbAteEg6HsG0U=;
        b=Dy/+QTakpnsQK+y71dOUQfiEdKQqejAQ3DsA2dgrD3mYhCi8aBmoMG4u9dNrgmUgji
         y5wgcQ1p6nJPNJl0HgnqQUfYmXCogMuE7ln9WWiLgCOt5y50hz89dI1vW8dFAcw4RwRb
         g+1R6tzt7yul0n7jMKrT91DsAa0J2Q3ybq9ebiRoouFCTA/SAbXJ/RTcLIALMbpJ5I/2
         UqxsaSaJ8pobVXsN4ryBRy8OWgb9UkDq72nEYsRBJve5dn0gSS70xr8rgULdYoyTCKRf
         oId0QuxgRKLchWIwcnsCGnQvVorrRek+gnLUNH64rbdRWhlB23hmCv2DmbKc56pBDIFw
         YB7w==
X-Gm-Message-State: AOJu0YzIEMkPeRb+AqC2MrDPHvrZl7xb8r0CbQfKMbNQn6D+gJYHbMRj
	UoCjiFoz2Zi6Ir2hOZf7rL8jBw==
X-Google-Smtp-Source: AGHT+IFj6qY9ZGIZ7zhLjscs5t/l6tiV+o0WMRw/Smkie7Au+T0++diSeuW+C9be47Z4c2Gxfc/m6g==
X-Received: by 2002:aa7:d9cb:0:b0:51e:309:2e11 with SMTP id v11-20020aa7d9cb000000b0051e03092e11mr23265767eds.36.1693328033755;
        Tue, 29 Aug 2023 09:53:53 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id bf8-20020a0564021a4800b00529fb5fd3b9sm5830878edb.80.2023.08.29.09.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 09:53:53 -0700 (PDT)
Message-ID: <ae477c6d-b5a5-929f-0a36-3c0d2484add5@linaro.org>
Date: Tue, 29 Aug 2023 18:53:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY
 to UNIPHY
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-2-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-2-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_095357_857041_4BD2613E 
X-CRM114-Status: UNSURE (   8.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29/08/2023 15:58, Praveenkumar I wrote:
> UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
> ipq4019 PHY. Hence renaming this dt-binding to uniphy dt-binding and
> can be used for other qualcomm SoCs which are having similar UNIPHY.

That's not the reason to rename it. Keep the old name.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
