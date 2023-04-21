Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0849EC77B61
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 16:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmNZU8pGOQgWeVEB7vUF6K/JVlcNV+8poWw7B6IGfZQ=; b=twmrDo0B7vPMfn
	3OGVwEK0L57aL3/GvSP1IXBu5gK9jDWLOkcU6dHTrQH9CcHuqwUkhV+eGqTmr2/r8qJte7CpHXkRc
	v1EZ69/h3eg5YQt4nUfS9CCRwoSP3tmzwF7HLvupaY5y2EXI+cQ5rDiRTKMin3caTqEqld5wMiZhF
	esTpZmsx+RaJOMhogHbv2Tdt0B+xOfSfpo/LqAGvCAe9mrqeEbdHEQ7hV95ROXtECwdhjmtpRXs/H
	jcaJNG52zf+aK/VndgidpUHkKK48OBPMw2tBnVN65gdYXK1iFApH5e5oIeBBooBMmEXJ0gUbpouhH
	6qgp0luZ54E1IB/8PmcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pptwe-00BQUZ-1x;
	Fri, 21 Apr 2023 16:49:12 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pptwc-00BQTw-0z
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 16:49:11 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-94f109b1808so318740066b.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 09:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682095746; x=1684687746;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KFbWjqroS73UgyNshkyA6Chv3Wv27it6AC9kt6qa+fY=;
        b=PzIC3uXtnwpJnedkTaOM5p7GiQ1Rhk6L5+p19qvC4Dt+WoNwyw8dJ62aCObABctUsO
         cOmzEjKGZsvTXItoUYAXMyeib9ZMPW1s51xCnBqxQYztcItD770tgmj/WfBrfrAtscb3
         4tYPaqbpBrFgrYEggHBFPy1cNhiahnMVpeeOC8BdLqhTcxKKeuzZe2+msZZp5BMG+kAH
         Z3gEoiKrzXnU/CLJtPJLruPByTcdWectUyuyUWSfgkk/vBs8N3umqpBdKoswd/YP5iQH
         cw2r/l9dE05JPz0tAhc8xISgNiyc3pbcq+nTQoFOxzRR6p7w9bBsOOpQKRoeLXP+Gp50
         dDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682095746; x=1684687746;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KFbWjqroS73UgyNshkyA6Chv3Wv27it6AC9kt6qa+fY=;
        b=OF9jbhgNfneMFJlsIsJx+wXWkRHLOParbOJuFU7DkHJ7tJ8weN8ODKE6UeJD+ArwRD
         XnCkL3MN0LDbvx/VNSSKFjiYq5VQuYM+BCBuJLlU8CLlBgwEMIQF79t4+kZXfysELb+A
         t7RrJcjsQkChuHE2MqPgSkojhOCW1usnH8OoFK/jFHf2JRKH8u1iTecfrfFu118dZ9FY
         w66EAaaX+eEoYnCsxC2SJ9X8Ybug6PyDhUUwzgCovk5WoACQTuKqalan7WVml0Cu0Jek
         g6P3TM7LhHcihq2Zpy1AAT14wEDkyMXzlr8JP3D/Ej0cffaQqLVUm1PJod9M3fXHOxC0
         PeCw==
X-Gm-Message-State: AAQBX9cBS7hEIYPAfV0wlGcyh2o4otTnSzb4RAoLTV5zcTXOtARQ2gq6
	zLnuHEXTZ40QxJbeFfNknBW5PA==
X-Google-Smtp-Source: AKy350aLL9GGW0waHbazfqEBHSm937gbyp54HerbiEHZb9mjsANA7SEFAHMq5ViLjxtlKbP9F6b5pQ==
X-Received: by 2002:a17:906:90c8:b0:92b:e1ff:be30 with SMTP id v8-20020a17090690c800b0092be1ffbe30mr2564169ejw.4.1682095746454;
        Fri, 21 Apr 2023 09:49:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:687d:8c5:41cb:9883? ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id h11-20020a170906828b00b0094f23480619sm2302695ejx.172.2023.04.21.09.49.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 09:49:05 -0700 (PDT)
Message-ID: <49e0e62e-3746-1387-fb9a-49739423fb63@linaro.org>
Date: Fri, 21 Apr 2023 18:49:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574 bindings
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
 quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
 quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
References: <20230421124150.21190-1-quic_devipriy@quicinc.com>
 <20230421124150.21190-2-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421124150.21190-2-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_094910_349508_6687592C 
X-CRM114-Status: GOOD (  11.09  )
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

On 21/04/2023 14:41, Devi Priya wrote:
> Add bindings for the PCIe QMP PHYs found on IPQ9574.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V1:
> 	- Introduced a new binding for ipq9574 as suggested by Krzysztof

It looks it depends on the clock header.

Either mention the dependency here or better convert the clock IDs to
numerical values. With the second approach the patch can be applied
independently from clock headers patch.

> 
>  .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> 

Assuming you tested it (as Rob's bot cannot due to dependency):

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
