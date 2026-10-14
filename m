Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E80ACC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBoW1ztSke1t/IDBonKwS2Zw++s+Mmt58r6CcE5ryx8=; b=p7Qs4DkcZl+bzx
	F9Nzggiy6rZbVVe/yOvZUjb+S051mNjI5wiVkVLsv2Kj9o0k8xAZ4L37nntIq2zyjS9ZjSm0G+UQt
	FOY2xzMdtfnufpXdbPxRLBAFthMskuhesG51gacwVXMgl6ZKGNMm/Nr3FV4L8MqwjzBs7R/4hydXN
	GAGI2HANtXapREQfEXdC4dLJcWNqvIZOFphaZUhdBCKzAGym9BQM/V/ZCXIDnmm5XjdlX4xac120x
	bGJuKtdwgOvoRCUUIiupkdbffI3czbyGSqeL0r/BpLtbIKtXcTMJWeMhoJ/sBkOpac8+8N3vpGunZ
	rsdAggq+aXbKv60yAVWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvOk-0000000F3Aa-0ToD;
	Wed, 14 Oct 2026 09:35:46 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvOZ-0000000F38Q-3XiN
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:35:45 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6aa9164072cso5727819a12.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791970533; x=1792575333; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kzIz0X6ttxgOxkC5LXT332DK567KH/TTx/ooIFt2UKA=;
        b=n11/YmSwypQdUzpM5C3G5BZDgzm4Vrl11jQQkWnmcuBKDDbsvO06k6NoZ0AlSQZy11
         Yxw+ZNa8w40pAKrvO6vDEPcC5PNp8Tpr8WcKgpeZFrMIR5piXylvQgN8owi9EMRaM2rT
         o5wvBJobA+mn4oq+232TZsIRJPIgpnX1Wv9qYW9O7l8umna7vLl+ExRxPL+I5xk3Ax++
         CWqwxD6hK4QnG9L1zS554MQM909q3Rw8ZztBWSk9v547yLNOp/P9L1cydH679/9L6Ehv
         zc3d1tRQqWugzztYKCEFY/2d0MiFYPSzEY49UqhBxrHHE9XE4SQUusWmLOsvZvMgOA75
         Wy0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791970533; x=1792575333;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kzIz0X6ttxgOxkC5LXT332DK567KH/TTx/ooIFt2UKA=;
        b=cLwOyKuVLCMRgyYbB7L+KY8fIsztGyqZN/86Uzm2+IWF3MrSD6o7NmyahVLyGX9CXK
         dUMnXg7ky5qtD1qAE2oojQ33myfSeLyjKJ4OsiTgSNP1mpYHtMpT6WRXnlFCGm+UoVEq
         vTCsJvn0MWpIRIG8V+lKNdFeeyFAijwuBIWTnjxt6l2KnkXwYfP2hvAxLRNOyb5oHH38
         CDYvCP0eJ1fMHkF3Z5/47q/pPxqfkthpFF05aLyR4S2nXHQpATwOblOw7i8GcYvFBtG1
         2cmfAQxRXxcuKZsaGMo5e1p0ZIZBWpT/FBa/Iyhln49ofbdlwXH5/XAJUTYHAfGYzjP5
         8xDA==
X-Forwarded-Encrypted: i=1; AKwUvBzQnoWVkwAHkmQav+jZYipNaw2L8SqsVO+CegeBLR6FJFIvY2LwxQDi2SFBJRwR0qhmPmp7ljoOIM4=@lists.infradead.org
X-Gm-Message-State: AFq9FYLpwLaHHyRBgFVA01nszxwaVJbZnyzgBYcyv/llhbzY88AsrmXV
	ZaA0VcdjncQ4PErH/RVRdW8BGJqP9hOLjls3mHZD1Wry5+ZDwBmhKp20vo4RUdBFQXs=
X-Gm-Gg: AYBFou2OgQpaY1T0gFaeVoFSDKhKiRmKfN4sHC/rh7FqWECdQWWFLQ5/HVFNm7DXBsX
	RvCa+gwExsf9Flt41a7VRZO602oK/O+gbMQYeaGCQvLQfmkuumBHRdInvK4bPlyDu/FxrPYP46c
	4J+R0n9MUfVxQm0qLwV3JsKJ0Px7uE9IBfLmydQn3Nvm4/QfkDVbJBeS7o7h/tEcYTRCutMThhX
	hKESfdKlWk/Ig8AQW2QaQw6wfreHMJNKRFJ2Cr47SYQzcO69o4eqRcbQTdI2nC8myKRP+fATGmR
	5muWz60kD2pcvEdBBjkWRgbg9H2E5lOXaiUSOrLr4j1vHO8U2IxpSmq2xosJz1kZDI8ovRGenQx
	JOGvVKpZjio+knCS8ecUkuFZQ5SOrues13MZgsUluOEuod0rjyjUWvIMy8nHTNV+rVjRWoC7IDX
	lC0zHhXCcJz3IqpHCc2yqnsb1NF2OrAwVAqRhA9hi/EkOf7iU9Hnxlqach8Uhau26Vei/Sj3h1f
	R/3OKIeDt3I
X-Received: by 2002:a05:6402:2351:b0:6b1:b626:5bd9 with SMTP id 4fb4d7f45d1cf-6b1b6265e2fmr7285065a12.0.1791970533495;
        Wed, 14 Oct 2026 02:35:33 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.126.202])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b203839764sm943163a12.7.2026.10.14.02.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:35:32 -0700 (PDT)
Message-ID: <8cb5164e-9f27-4e19-9f4a-37da35fe0770@linaro.org>
Date: Wed, 14 Oct 2026 10:35:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi
 and Maili compatibles
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-2-fc93222da89c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261013-hawi-maili-camss-v2-2-fc93222da89c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_023535_918721_1E3B10A4 
X-CRM114-Status: GOOD (  11.36  )
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

On 13/10/2026 12:02, Nihal Kumar Gupta wrote:
> Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
> identical register interface. Add qcom,hawi-csi2-phy and
> qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.
> 
> Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index 6e9eb8e265df93b631101ae13f31f6365b6239b6..627aebc7cd9b7ca313457d3f70f72796e9671e8a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -18,11 +18,16 @@ properties:
>     compatible:
>       oneOf:
>         - enum:
> +          - qcom,hawi-csi2-phy
>             - qcom,kaanapali-csi2-phy
>             - qcom,x1e80100-csi2-phy
>         - items:
>             - const: qcom,glymur-csi2-phy
>             - const: qcom,x1e80100-csi2-phy
> +      - items:
> +          - enum:
> +              - qcom,maili-csi2-phy
> +          - const: qcom,hawi-csi2-phy
>   
>     reg:
>       maxItems: 1
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
