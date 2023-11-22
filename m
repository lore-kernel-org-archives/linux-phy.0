Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9497C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 11:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39gtSxAGancQouf7D3Bm4K+YJN9NSMEE3nSlLrnnzG8=; b=xgTZotog+qj4Bj
	in06fJuUumU6Z3eg+Z8tJH/4STVuTw3kZ6KDvMaqk1xEOuebWeO0SU6XgtR47aJP7rzbKM5JiSAbz
	yBRAR5eoNCjJH+kFuPm7FGCkGbLHHqNAEbnXJ4GqJiICbnTN0elgdwhjYkqVXHhLiorT5nlFF+bDe
	b+ZrBCwxsPMF3DTvFzgYijuBogGiz8aYgV351zknGLO29zl4hOv6KKuJEGlOwjphlNNuzf7IeACm3
	UE6LVH7wDrSxr5j0EYtFEoHblWKv1QaIx0zfl1yCk1jXFvy8zMFONx1MtIe6ieKtxordAAI4h1l+8
	yobSrv6bP9/9BFpE6txw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5l0W-001VWn-1W;
	Wed, 22 Nov 2023 11:03:00 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5l0S-001VUa-1e
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 11:02:58 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5caf387f2aaso27881707b3.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 03:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650975; x=1701255775; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=judoGuVj96yz0cfO1+LrQgdiCfR9oKHOka9ldKzU/iQ=;
        b=f+cc2Bvkz4F9ptakxMO2HEfP2ZTAVxzeJ/yBJ5qOeweoNQsBYS1fe8DW1mr6ymIdhT
         O7TPahrH5y0zYfRXKC/88uZRMPlXxAa+OPw2kUfowYZSbxO9HinbI3rZllvtgetsz90o
         DlPuLDB0PPziy7pYmntMiP99pC7VU//F1TBjz97jq2ir2pDXix8uZ1YG+da6eiYS9WeC
         POpDWxfrPcvX9kSwkQ0AGPUM01dba3Dxtxx9sF8O+yMwvhhJfpSblW2/lcxfqCPkIrpZ
         6HyWtM4L7JCT4Atf/sp/K2eC1F42bEkOvH12V6Frm5kCIwGGishVNAy87lQinzg6ieVU
         BbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650975; x=1701255775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=judoGuVj96yz0cfO1+LrQgdiCfR9oKHOka9ldKzU/iQ=;
        b=pncVYf8tjcJi4jyNPYPwrxvqMFSWckHxy4sG+lPvyhr3om1NOTG1n/eaZZowR/qW8q
         iDskqgX9jZk0tnQehQVQgTbQOlqdD0kRO5AAty0HWLEOlVNX6x31lcm2atxZeiQsYMW7
         AX+vR+sKoZbIl7xrqdZ1k0UW7CA1anVI/tUUNFIhhgS7uYi6To8wH2xqGqT2y6hMgirv
         UPD1s1xlRiIUevTl87HcOSp+iiV5uu/8DJVjtWC1jltwnK9dtnR8jgxsyvab7F/fwFZL
         /I64wxyZuZJ0WZnO7nFXtKmeOx/pqUHIV5dHKSUjtsPfGJPpOPUApkmlN4QqkVLh+gak
         S2ow==
X-Gm-Message-State: AOJu0YwHb1e34/IJHP6K6EFhhf02mRKp/78FMkOnLi/6W3UDAf1gD495
	/qxqlDKwxqF2s9DuAVTCDnPnADwEJ26XultrjktOUQ==
X-Google-Smtp-Source: AGHT+IG7QtdXMD/IbuQvfyaSezE4/wn9Rzi9wEyWCao4R2S63hXyZv7aDlf2lJ46E658E4CV4osFbPqMxC2QwFZs1R8=
X-Received: by 2002:a81:93c4:0:b0:5a8:2037:36d9 with SMTP id
 k187-20020a8193c4000000b005a8203736d9mr1961750ywg.25.1700650975747; Wed, 22
 Nov 2023 03:02:55 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
 <20231122-phy-qualcomm-eusb2-x1e80100-v1-1-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-1-ce0991161847@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:02:44 +0200
Message-ID: <CAA8EJppov1ZtJvxyiXwik77bs5=dDfE_k_Wv8-DyzYtoEzvv4Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: snps-eusb2: Document the
 X1E80100 compatible
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_030256_553340_A5CD615F 
X-CRM114-Status: GOOD (  13.30  )
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

On Wed, 22 Nov 2023 at 12:28, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 compatible to the list of supported PHYs.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> index 8f5d7362046c..ea1809efbf56 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> @@ -21,6 +21,7 @@ properties:
>                - qcom,sm8650-snps-eusb2-phy
>            - const: qcom,sm8550-snps-eusb2-phy

Ah, I think this answers my question for patch2. Can we instead reuse
the existing compat string as it was done for sm8650?

>        - const: qcom,sm8550-snps-eusb2-phy
> +      - const: qcom,x1e80100-snps-eusb2-phy
>
>    reg:
>      maxItems: 1
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
