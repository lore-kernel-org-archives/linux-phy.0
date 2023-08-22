Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77296EE4996
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 11:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi7WOiLAizHTnmMjAw5Mflupdr6PD2n+UaucV0e+F+Y=; b=sOAMeaeWHADvaN
	N1zo3fCiiKKPUgT23KyXzDWry56cTydeFcpqoITj5biMvDJICPHbMPlaO75Mg+Opq2AbpSExg3arA
	6iuevpW9R8jiOYlSx2tQGeFY6s+scgns51gwSl9TrrWXviO57wnrGgUNg8KCqNwrBsVO/ffl2wFoM
	oS8KuzfYlR5JXv86Xv5Qr/vbDFqiNzIIJkEN0z/BNY9NPvAeUfOwitKOhGsKZDg5FVP7411BQanQK
	l+8283vHxyxnAy3yBL2ascbPgP/L1YphduEB6ujidUBdxcBdz67e4AtV3DpcEtdTR0OEBY2IQJLUG
	w0oXn4b2IGREI66q1hCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPr1-00FqwA-0W;
	Tue, 22 Aug 2023 11:47:23 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPqy-00FquG-2h
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 11:47:21 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-991c786369cso582999666b.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 04:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692704837; x=1693309637;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=55bIwn2d7j3dnR0hLojkzpFkh9GKaVLHWENI/qttC+Y=;
        b=BaZ1u4I0kXduhaoSIIgRXCfnZP1vXeZq9wbxNFNAC2d0I05kZX2pEC1g59msCdZyZy
         h3+pQkTCydm8ugvPeM+VmZ1VJxp2Rm8XAI5hlBlc0mBeEdgqePZoEfEAb/tpIWHihoEM
         LDIszR8GMnxgFI8O9A9Cd3MaMi/ilwIMhazYclGZ5pjvPG1MoJ/royNiItorFt6yJ2qq
         z0FvWmAJH14Yzx5sROk/MIaLviwTTGvtLrpbHLT4yc3mO7HBW6uHatlme4s8IQz5xOIv
         3G+UT5+qR+T6EVehsGHi/ChOEEthkyH4GL5+SUWs5azWv9NshGFXL4Ba+m8tdkqbTLeg
         EebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692704837; x=1693309637;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=55bIwn2d7j3dnR0hLojkzpFkh9GKaVLHWENI/qttC+Y=;
        b=aDRD6k5499SQZ1KfEMVK4drOrljY6V4hGZJMs59bG/m+i0iVdKsBHzbPEOi2uQ5exX
         coMRchRnNf108oDEMUe4MP09VQ9iWQmrnypWsr6arM7Nik/CPvrRTL2hP+nsUluOFkQT
         NBynVs0gBOROoGGHucHYjt/Wnmjzt6c1sffSPjeDja4q71XstvXFbOjYRTb81wOgINde
         Lc6kZBWJSldq00RSBQ/Ji9MMOOIkXBHedHBsBSePmEZkJ4adu2YCQs0uU/aHQTdWc/VM
         eUZgFxnM9xFeu4T3JDC5z5biLKvEvEn6rabJ1XiF9TQPxCJIwWcl25jYrEdz7OH6q/bh
         NFEw==
X-Gm-Message-State: AOJu0YybxYzFX74bfy/H59Q67UIq0fCiV8ubJaQf1M3e5NpY8LPRBPNc
	Uwcl11yTLV2sI9NTIQ8WX4j12w==
X-Google-Smtp-Source: AGHT+IHF5Zi2ypBZqCfcQok6ofhRkICDoU4oIEgfBDJunkp2sXwdHtuMYbfri0HDGcQg6FYtYGJaqQ==
X-Received: by 2002:a17:906:109e:b0:99b:4956:e4df with SMTP id u30-20020a170906109e00b0099b4956e4dfmr7858232eju.11.1692704837137;
        Tue, 22 Aug 2023 04:47:17 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id ja24-20020a170907989800b00992b8d56f3asm8097682ejc.105.2023.08.22.04.47.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:47:16 -0700 (PDT)
Message-ID: <bd24990a-9cc4-533a-0443-9e91e3b61a71@linaro.org>
Date: Tue, 22 Aug 2023 13:47:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v9 1/4] phy: qcom: m31: Fix indentation issues
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1692699472.git.quic_varada@quicinc.com>
 <6d1638daf9b0616816fdecb529df86a394db7942.1692699472.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6d1638daf9b0616816fdecb529df86a394db7942.1692699472.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_044720_871743_0AA22EEA 
X-CRM114-Status: UNSURE (   6.74  )
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

On 22/08/2023 12:29, Varadarajan Narayanan wrote:
> * Fix indentation
> * Drop simple success messages
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9:
> 	Fix line break alignment

I wished we run checkpatch before sending patches, not after :/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
