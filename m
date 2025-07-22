Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C140C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UV/e7oBx2SvjB2z13Lvwc5SsLB0xKhCOI6JzH+g1vk=; b=RvzQ651MkJR3ys
	zoL0iQC8/2iQadZtwyowpoMbEvSOqQxROtLFtUfEIRFWV+Per4NeLYBYWb2nw+E15Qe6oNhn6tjgl
	l80bi7660LTZ3oDLhxLDaq8AIRfdSsCOTSXsQTqtyXI7tnU04ACVysNZ0yjCsGVfga5gPdy1tAi1W
	tuumValgMKKpOsJn9kJv+hCXxb8fVMPtviSDpN8OFh/IL1+yY9N4UsRT3bEkANMuQf1nR0SzBl+qw
	a+mc4INwKB1rNZhRPY16b5wAkf+NkRHfK9cM7zzlLiZr03O4Zm5KCD+WgqMUDh7NZPMSQSEPrCaP+
	UlAO2KQlpIDSt92CVWsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue9CA-00000001zVA-34k9;
	Tue, 22 Jul 2025 09:21:58 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8yu-00000001wsy-0YWu
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 09:08:17 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45629703011so36000695e9.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 02:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753175294; x=1753780094; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=On3JvqZOf5viVWmDtf1F5EeuSK6iuUoSgcnf4ZkG6MQ=;
        b=R/IFRGo2GzZ3TlOQLMjyRGZsQbn+nEIqZPRNBx9r+/KmdOo3iiy1Pv9lg0ghREl3h8
         NOihtnwoKThPcv1IxT34qwRpkK6BiaYhACjN/phihBL9953QGObm6egW1sNlYxVe9Fl3
         iZ+DFi5qllW1nq5nDgfLl6aP31sDMy7qxwTMdENf3II4pQmeCWOwhlTrqg9pAJIhJuSy
         a0oPcu3nVPln/AH5plrwiJpwiX0GPMe3AiIoGVCU7ccUBr9HtdF7/s9b37jElk6MlduS
         GTEZmgntx6cQNDmB7BzBzZgfuP95nu1k9k8AzR8KilPVp62uG/jyIDpI9Wpa0UsUXzXA
         T4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753175294; x=1753780094;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=On3JvqZOf5viVWmDtf1F5EeuSK6iuUoSgcnf4ZkG6MQ=;
        b=wvBT4MMlk6pV5rVNI+wP6smjUX4Clv7zcytkgrrPGVreGdJTzZpbWvj5l6yWDHvrHy
         upKgORS5eQvL6NfLVDi+NSZZl5pQ4WLGwbjzzvPFVmJvPj6Fxy3fXidjnDl7PVI8mBOy
         Ftve5qG+0PEZQ0eSHTpYWWtH/MGzz0t6bR1oyBcddhuWfRso/FocsMACMFgBvsbEIIrh
         qdK7yL63oTMrx3m+LjhWYOr6TkJk42UWBfWEk8MA0Boi1PCrcbpiUvmjb+5Oa4xDFeN+
         ZOzTEcy8q6bTujY+GI1O4AMP5YdtyEa9MmaFWkDPbyzvFjw+A7eb7Q54og2XP/9MfgnL
         j61A==
X-Forwarded-Encrypted: i=1; AJvYcCWw5sXkAOTGZUNA6jPxogOecTPZ0jMIvAMLeO892PhZnGIyxBhNGSNQgXopvo11kAqXZBEI+msfk5U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvWsw4sglByzNc9kODLGbCPBKLkB/wWhDaK/cNR/AqdsurKspn
	U0gVMoqFnNE3PK1O99De+ZndcbyUExmTQoqUQnsG4GG5mGzeAqxo8zZZNGIwi1sqeOU=
X-Gm-Gg: ASbGncsYDGhbKMkPjs2vs0Zz0sfsrpgO6O2bOErhaLxdT0Zfhv269pJ9W4Za1Rbiele
	cEYkMbtpvKj8xPRcL4vT6xdQmFENo897wr4AutrxWGM+oYxmDQjo9ITdHCz9n6JepZpBTucuisy
	HTE7hx4dAHVcc81Fc+rF1A92IvhyM9qcSX8JxinpqJ8FKi4jS7U/YM/7CPJrfet6dwkzYdbztaf
	/45HXeayW10YptTtqEu/qaF7NZ9Kh25zPFHhvO5mchEHmXX4j36+SudBir99+K/hQn2XmsODDIv
	wqB9DhmuY8YOgMrDyWdf6WWE1Xit9a/Yq6S+1dSnms63zul5aybifLLpHaIZnHokVZD3zcpjHu4
	23oJrqBOqH0skSlHV0EtAcq+0rw/h+lSjDs4MXIRh89LqFbiVrn1jkl0JkVC3KGjawXFLe4gzDQ
	==
X-Google-Smtp-Source: AGHT+IGIe5v+xkseT1R+b83ynGM35H1dtttBfIBKdXEdhjXXuEssWueZy6PEB6lRJfSUU+5XBI6EAg==
X-Received: by 2002:a05:600c:8b85:b0:456:2347:3f01 with SMTP id 5b1f17b1804b1-456355c60d3mr166991665e9.20.1753175294468;
        Tue, 22 Jul 2025 02:08:14 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca253f9sm13035086f8f.6.2025.07.22.02.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 02:08:13 -0700 (PDT)
Message-ID: <4edefe21-27b6-4884-befa-ddb451bb9376@linaro.org>
Date: Tue, 22 Jul 2025 10:08:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
 <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
 <33d76d7f-ab14-4e76-8ffb-eb370901a046@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <33d76d7f-ab14-4e76-8ffb-eb370901a046@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_020816_178528_2882B4B9 
X-CRM114-Status: GOOD (  13.06  )
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

On 22/07/2025 09:32, Neil Armstrong wrote:
> The whole key point here is the combo mode, as I understood the combo 
> mode feature
> makes the PHY lanes available as 2 separate streams, like if you got 2 
> "controllers"
> attached to the same PHY. So in fact, the PHY should have a single node, 
> but 2 PHY
> interfaces in combo mode.
> 
> This makes all this controller/phy model very complex to handle and add 
> a lot of
> logic in the camss side. Moving the "csiphy" as an independent media 
> device that
> can declare up to 2 endpoints in combo mode makes things much simpler, 
> and allows
> us to attach each "csiphy" stream to any "controller" side of camss.

I think there should be a generic extension to PHY/linux-media to 
support that instead of something Qualcomm specific.

The first task is qcom/CAMSS specific which is separate the CSIPHYs out 
from the CAMSS block - done in this series and do so in a way that 
doesn't break the existing ABI - done in the context of adding Hamoa/x1e.

The second step should be to extend the existing linux-media and PHY API 
to support multiple sensors on the same CSIPHY in a generic way.

If you want to ship me some hardware, I'll help.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
