Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E24FDC4452B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 09:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orKTg5wTHFybTfap7OuISyInm9k/DpjBjODWmJmfvo4=; b=rJj5OI1Oaaenj8
	TeUcaXq/wzCGKOL46XJTEof0jfPNO5Vi4M5T31oUhY4KVpw0qIwaTZZO7re0kpfcpMypO1oRoyF8K
	qlxVlfhyV4AI4SeuAFDck33AyoJxbTe8b9v2sl1x8SKLeEsPxS8HH7sweDMJ+QdQrlMySLaeK3300
	ZZwsblFG9zyL8ehy+9DagWPfuenKNTMvwFDfWJo6I8+d07slcbhbJkn/C6rpJGpTcUxw4x9TT8rOG
	W4cczw0vg86t8GYCEFCFxMO1HgjnX9BRAV6M28k0IgKEXYGdRPwr05OfyCw9yM16gcZWOpdBv70TT
	fNUQ76VCvXhzd8tz5/+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7Df-000000092Qf-2alR;
	Tue, 21 Jul 2026 09:56:59 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7Dd-000000092Py-1Fhd
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 09:56:58 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5b2960ea2fbso278593e87.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 02:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784627815; x=1785232615; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=PlDMh90wfY4dRTCIsx8e18xxobLQnLayOa3bHMPPBVg=;
        b=u3AKYVYQMe1HnoV4sCI8d2vULyAU2Vbl0WMh89y59OZTxMWVhCr0sEKdoXquGBRahX
         MRIQrLNbd+Btp4pueIZXlqmfN3/nvaqIKSWS46Nhxt0sm3e90vvZjTH6nt4gPMZRBOUd
         Z29dRnx6+S5lb8iyc/E+Oe8IOklO4iZdNTNRRG2qnFlBINUkMlvi7ohwOW4/qevD3Bi1
         X8EASeFksHCOhNI++d+/QC/ePEpAL37nIre2K4xb1eYc35HXJmi0tT3ipiPiYR+7gzGB
         OtB9QtfFqT2cbYKOAYKECkobVYrd1P7FBd9EyyUT4PRGZKTzPXVxnnsGvF1EuKEv5b3c
         Ywew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784627815; x=1785232615;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PlDMh90wfY4dRTCIsx8e18xxobLQnLayOa3bHMPPBVg=;
        b=jm2NrpcO3K1k3kyU6tuXnT0f3e4Bjof6nDBfw2dmtWFOXF0qmu2J0TU6jga7pDLvsv
         lGzM5EVejrHUy/rVTU1yLJqfNFVL8OEesc9V1Lniw2NftG7LOAEDTZ+5Ggu0fPXZvyRA
         I0ZIzOcUC+eIRhckySvq/6WauMbQ54HG4uaJP5yB1SoGXxFQoe57DuR6HM3CSt8pHXDH
         wcQAYldCRh8lgIcxRjopdYGT8d4J35GvHa4eEupXU061X0uTe/LQMOIVxUiEGgXf+h6X
         uyTPl94Hmsxb5bpQ+TLFeLsI1NISoANC4pktVyBEog/TvEqKod7kd2fZJ7Hc7RGrkh22
         IOuQ==
X-Forwarded-Encrypted: i=1; AHgh+RrPXtkoM2X7AOp+OGV20GDhW6ndh2nrj/frgtN8jqkwUn8djuWdOhFPpU5OnvB4phLft8Nlm2S6z7Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywzgj7ogcRKhp4ZvB2lSjlUtI5Lp56eWBCBFNb6rxyR6a6OKMCn
	DNd5gswue+0le5pCqg2SbvlR9s2JKLd8BnnXqeBIwixCI2xPSKtyIVRwJJtuU1pq1Ec=
X-Gm-Gg: AR+sD13nxv3wKQpxYBNb3wJJa94MvFo6a2BTctKDXVTtG56APBs8n1uUm0bPc7ev+xG
	OIIt46Q2XCX+9vKUEm/FqEuqeDAS5uYESCTxFI31c6q2vpHLBdJVr+ucQQd27mncDDx1JJKIEeK
	Ds0PNaIvXFdJkPiNvdEgBMYkbJBrFVfm+qnTLKUkLaixXaFU1J1jNzYKke26q/XHDuL39t67GQy
	eC/INS+rWYmUjjVrXIrZxVtt3J/ndwN8KwDcpk6sO6GONLTCIHLgXW3Zt8phe0182jreABXjCVE
	Fh8ywQR5ZjpGFR6Yvv792Bh3p5sVd7l78tJ3YXcLqlIEbeLlrcYMPTTmJsntQnHRIJFuE8ilA46
	zerOwMq+krS9ke+yBxXl0H6apyPhK0VdnLOJB9DpXl8VPLR1IE2hR2bzqmd0eAbqz7yYkXB3idl
	MvSDrgGKIXCegWaeuUvIAfbCdi6w54v/ZsW8+Tu7H4z8mUPhv6k4yG7SIE
X-Received: by 2002:a05:6512:3b98:b0:5ae:c5b2:9cbd with SMTP id 2adb3069b0e04-5b2a4a7e164mr328522e87.4.1784627814976;
        Tue, 21 Jul 2026 02:56:54 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e18811sm2797516e87.60.2026.07.21.02.56.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 02:56:54 -0700 (PDT)
Message-ID: <345ca98e-09f6-4965-87bb-e64dac096498@linaro.org>
Date: Tue, 21 Jul 2026 12:56:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <LyWJAb2qKsAFTMHNJUce9VqoqbkFKUQanb6z8ziA63RYZ1P9jj1XpA83uGPvz9m4QnWvEjJFK8dGD_8EtioHVQ==@protonmail.internalid>
 <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
 <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_025657_514599_B2920A23 
X-CRM114-Status: GOOD (  14.18  )
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

On 7/21/26 12:39, Bryan O'Donoghue wrote:
> On 21/07/2026 09:17, Vladimir Zapolskiy wrote:
>>> +  "#phy-cells":
>>> +    const: 1
>>> +    description:
>>> +      The single cell specifies the PHY operating mode.
>> This has been reported before, #phy-cells shall be 0, the operation
>> mode is selected by bus-type of endpoints as it is described in
>> video-interfaces.yaml
>>
>> Two competing values are redundant and it opens a door to a wrong
>> hardware description, the technical discussion has not been started yet.
> 
> So as I said before, I'm following Rob Herring's input on this and
> Krzysztof has given RB for this binding. At this stage, I don't see
> scope to change it.
> 
> Adding endpoints was already a compromise to address your feedback,
> which I hoped would bring you on board with the design.

That's my comment dated March 27, 2026, and it says moving phy type
from phy cell to the endpoint property excludes the need to set any
phy cells:

https://lore.kernel.org/linux-arm-msm/e37ce438-12c7-462d-b2bc-1351be62b806@linaro.org/

The technical comment is left unresponded so far since then.

Since there is no expected phy cells to get on consumer's side, and
since there is another link between CSIPHY and CSID described in
video-interfaces.yaml, any kind of dependency of this IP on phy can
be just removed, which serves the purpose of hardware description
simplification.

> 
> There are several SoC bindings as well as new CPHY features which are
> gated on these changes.
> 
> Vinod, Kishon I'd request to merge the changes as-is.
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
