Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B079DC7618D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 11:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVec41zQ5Q0i05nJkHBqF4E/aVWoRXxNu26y3rQGxi4=; b=DWSbBe7Ntd/q3H
	mcQJ7piK4x58tcKNOQKusPGSnrjNKvnMibWaAvPZYkCc6deWS6AsUsPr99bvfVU/KcxVNHOzgkZsy
	pdU9Itcln9AHXnK8cieysdb2rE4pwuebh5SmKhI+JLVrSAq4LYL1fxb8ew9LkZeCsU9MN/Bbe4NCz
	yENC+0WLR/quRpAEuX3GIE75cDqD7QXG/ukM8pfuotW5QBV88czn96kDEzQD0zvof7hB5i/XRjtkU
	CFBpMvREf++ugqCN1UI+bBVkI4PU0l9T7Y1iwdD9PUqdOLuRRKKvfoVgkEEw5NsqT/K9bFDNWfr2T
	QlT3vBDIi5mSJOzBCfBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peZzZ-00CAQy-0Y;
	Tue, 21 Mar 2023 11:17:25 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peZzW-00CAQ1-0z
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 11:17:23 +0000
Received: by mail-lf1-x131.google.com with SMTP id t11so18644695lfr.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Mar 2023 04:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679397438;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtKEJBNyunYjPawzF3HMbeki6+rSmdWQGFTeKC93lS8=;
        b=xP7wVRu4n2NvCx9w5tgDPIrBrnDazF2rn1Ugs5zcZrJrmnsJDdrMMbTNPhVetL+qYt
         VnXYrx/tiqxOrPDiXirqr9fFdv4Z3uYyekA5rBvoqzitMRmO4hULouTlzjUabHJYwH4h
         05/kTRXg8apF86NYLPjVOxxS+mrOW61WidTtm9dGtJt8llPweUPdw4h9iCxFC7OOh1gq
         f5S7HVqNGewrBO3/ocncSILrZDipu3g8Yv/XB6L9g8NEpRPWCuvOUCrN1omtuXyMrOgC
         DTAShJuPqtuZ+TR+/MK7bc7UrldvM8h4BQsXMtGuvAtPQCZV159V5J05KzHOF4F4JJZD
         4vgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679397438;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:to:from:date:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NtKEJBNyunYjPawzF3HMbeki6+rSmdWQGFTeKC93lS8=;
        b=SfYN4ZmXE5op4skJacu1Z/Srgr55M6vRsIV9fzr1hXmJnLqiOlH8tON3I2OEU8iq6m
         eeHjpmK7g3o8C/qMrRhSZDhBMmWkLK/Z7bVTFBb91ZLKYhmI2nmbGEmfDBJ9TdSeYPJU
         FCCbsGL8KAUljrgqjvffURknzyCWcd6Sm+cyeWXfCejaJzCNIpphNQWP1meM7eso2o7R
         UXM8ZCgRxeRQ3BKmtNoHKKkOXth/UnAiDzBCWSrkpiu49y+b1t9KUbnPxLhs0KLmyTqG
         O8cYALT7bNE8GiJ4/KC4prbi/bx3zj3ejcHB3MzX0Q4YjhZUpQQ8xkj1x+Vup71d2vOj
         EwHA==
X-Gm-Message-State: AO0yUKVOebgqhDi9iZPWgme1mD8iGTZORZALTns91BORhe2Uboui19QM
	FS/9D2o0k1O5icg9wI02K9qU8A==
X-Google-Smtp-Source: AK7set/Cu17olUriB8ZQQHQ5Aoy/b9zxovXnsVmvUhfJhKT+otuqfADxe0j3tJFlQHz6V7oAyzVd3Q==
X-Received: by 2002:a05:6512:3a8b:b0:4db:3846:f908 with SMTP id q11-20020a0565123a8b00b004db3846f908mr963454lfu.10.1679397438291;
        Tue, 21 Mar 2023 04:17:18 -0700 (PDT)
Received: from [127.0.0.1] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m2-20020a2e9342000000b00295965f7495sm2174305ljh.0.2023.03.21.04.17.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2023 04:17:17 -0700 (PDT)
Date: Tue, 21 Mar 2023 14:17:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_1/8=5D_dt-bindings=3A_phy=3A_q?= =?US-ASCII?Q?com=2Cqusb2=3A_Document_IPQ9574_compatible?=
User-Agent: K-9 Mail for Android
In-Reply-To: <ef5af2e581203e2101773863aa7e1667b4d1b705.1679388632.git.quic_varada@quicinc.com>
References: <cover.1677749625.git.quic_varada@quicinc.com> <cover.1679388632.git.quic_varada@quicinc.com> <ef5af2e581203e2101773863aa7e1667b4d1b705.1679388632.git.quic_varada@quicinc.com>
Message-ID: <69120CDC-19C5-4087-BF71-0ECAB87D018B@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_041722_383668_3B161614 
X-CRM114-Status: UNSURE (   9.22  )
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



On 21 March 2023 11:54:19 GMT+03:00, Varadarajan Narayanan <quic_varada@quicinc.com> wrote:
>Document the compatible string used for the qusb2 phy in IPQ9574.
>
>Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>
>---
> Changes in v2:
>	- Moved ipq6018 to the proper place and placed ipq9574
>	  next to it as suggested by Dmitry
>---
> Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>index 7f403e7..eaecf9b 100644
>--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>@@ -19,12 +19,13 @@ properties:
>       - items:
>           - enum:
>               - qcom,ipq8074-qusb2-phy
>+              - qcom,ipq6018-qusb2-phy
>+              - qcom,ipq9574-qusb2-phy

This still isn't sorted

>               - qcom,msm8953-qusb2-phy
>               - qcom,msm8996-qusb2-phy
>               - qcom,msm8998-qusb2-phy
>               - qcom,qcm2290-qusb2-phy
>               - qcom,sdm660-qusb2-phy
>-              - qcom,ipq6018-qusb2-phy
>               - qcom,sm4250-qusb2-phy
>               - qcom,sm6115-qusb2-phy
>       - items:

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
