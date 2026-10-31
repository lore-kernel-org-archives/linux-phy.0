Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6440F606A329
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NXGQwdmM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=xWGXVRsD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yfNonitBwWvj6f0Qvc0nP78dGGuvubkyrkCqN7vrgGo=; b=NXGQwdmMuN3Jgst29aaH8frUUv
	5L6KLtcJk7Ul/foFBdPyrSawTEDQEadwOKTlkcgcaVmZVpIDI9Pwv5QOX98vcnWZHD9Fcps2gnijP
	GPIPp80kYCFvysl7GRDG+iDgOY628x1ZhsrdGzKD9hHi93ko32a92UZvzXMCFlr5qmFe5JgiWKag1
	/xi00AUOAndwoNQmEV0sxtb/Usu3udBHaPM+GHdCs0j+2yE6TOYcwZsX2pah4u7xSs1J25/CGjkJc
	1FcrltcNM+V5YzLtekoe/sYBLEcYKiWBelm1N8U9l7TiPYlvTVIKatsy7OT5fjvUEnabL7vC1trcH
	6AdcjpqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7Tq-0000000DGeN-0RqL;
	Sat, 31 Oct 2026 11:42:38 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7To-0000000DGdm-2Gvc
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:42:37 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5bb7ad903d0so161327e87.3
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 04:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793446954; x=1794051754; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=upwfxi0DBGFEpM8kAk0eqTBac2ACweYPhkRwvSbMeZg=;
        b=xWGXVRsDj+/qQqXJs7ZydOvd/7dizKwl50/7ao+vZclmijaPtgx91YiTjcHd32YrQs
         RtR95/6mutHQKBSUAjlngMdb32EEkTe2y3n/XMkfQ4ecTmYwrYrQxcSjyHSiENXE+Sqi
         RiLwCWeq0jfFDUy0uUG54WrdC4ETfpji9Z0ZBQid0pCt3Gf+cjHAqj2cI46SP9dRNF2i
         ocpsxNq60tbX7wOy3dhqy7NIzpdyTGoAy2hXDMFy1QXuOtA7zHg9zlYcmhAfPEtwT/VK
         ZAnyEyMHmxPrcbdZ+8FhMCnbIdxsdT8FnkO3xn5y+x6zBND7chSVPw9Ws818NT1TfYWb
         UM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793446954; x=1794051754;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=upwfxi0DBGFEpM8kAk0eqTBac2ACweYPhkRwvSbMeZg=;
        b=aGz+UnijW9Qfx2AhWPs5LOpypvGzzagcvLCSiYyVqdlXPOwIfP2ElMpDTvGJbIo2Gu
         dQPLQSyt7Wus3jqXnaPLHvodewsbyDDe/IjAl4yORna9kOsaKAm7gaO8QjSA9x+/jRp+
         kIU3K3JvfvKwOI6sOjbNQiA4mQRVjXEa0wzgbdNZnNA9l4NUpdJgpWRlpSlrmrF4M7pd
         pu6C6ga0Qso2tH0miqWDQK100yG/ruYR1A41Bjn4v6ewIn9Yw+peRNgMJZY2MXuWdz8l
         z6Sss23gzKLHdi71BaQSL0iySxgfzXsYHDhHABDZr4K6Cd0vM2oTA3ysk0tPVHw0jU4o
         TEAw==
X-Gm-Message-State: AFq9FYJcwwCJVCQWZmd20qzs+wmqmQT+Cp39BiOpbCTmzwoS9L+BQU0J
	vw/0CR7AWsej7dvjbKMDiRm9aFbu837tNNJeWkHmpMTlx7HO4D/5cw4OaaReUgX184Y=
X-Gm-Gg: AYBFou0Uf84Hy8emNR28a4FCRqhCwPkieL7t/qhpbX6zJMtAnpjafTpRuXZh3Y/DBeW
	UerMlwbFuk40IRKBgD9JRWvcbvTDEPV7rg+JYmK/QOXRt99zGyf5XXSzGazir1oP1XBumyzT0Kk
	DY4AvEAab3mY83ZWVvvJ8Xl1Wq2MEKV4JZTPgwrgcyz3JvV7gnm5GaHYZjp75az3FmBMTms8jvC
	IBqyEmg0dZsYASopZYDOAZwFtsgoO37e2b2QPgoBrxe6kdQab9DqyrQP0gUDYrgpXFCXTgL1QOx
	C0gb2ZP/VS4546dtLIWg8rtYyN0P+xQR5w+khjcLPhP7/FGak5uLoku+Lexwx/S9H86xvEPTY9A
	CkYbHttFQ3ebB2Mhpx2UxjqNwAjrzs7WlteGYeBSmvWERh0gq5enIsg0utPC77QDxf8hjZqb+Al
	n7jKWu5dxRB2gl1d+WWRNqrXh9ycyImKg71V6kvPqdCX3RkQK9y5/wCO6ao9L1RCFQoXyMEoVb2
	WJvPe/pM/WY5lfmVOQsa+eOg6rzvPnK2LUH9qgnAibfWgB4cfRsMh3FeFChol1MMqKE9OnBxf56
	H7PBNma/y3iwe0Gr7hJFKeMZT1ZnqRsqqN93Tui6gme/P/DhPz+Mibo8GGfhOovYaSg5HeAB0BL
	hrCK9KNo=
X-Received: by 2002:a05:6512:220d:b0:5bf:b8f1:80ce with SMTP id 2adb3069b0e04-5bfd9578721mr1660720e87.5.1793446954460;
        Sat, 31 Oct 2026 04:42:34 -0700 (PDT)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bfe0740446sm536809e87.61.2026.10.31.04.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2026 04:42:33 -0700 (PDT)
Message-ID: <c10dbcfd-b9d7-4ac0-be30-6b78594bfdab@linaro.org>
Date: Sat, 31 Oct 2026 13:42:32 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 01/15] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-1-95f250b18612@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261028-kaanapali-camss-v23-1-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_044236_610734_C5FB4FD7 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/26 17:20, Hangxiang Ma wrote:
> The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
> C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Wrong, it is NOT compatible.

Due to the functional difference in the register offset, which is
described in the patch 0002, it is NOT possible to fallback to
"qcom,x1e80100-csi2-phy" compatible device driver, and there shall
be a new stand-alone compatible variable "qcom,kaanapali-csi2-phy".

> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index 1f1e2a4993b2..6e9eb8e265df 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -17,7 +17,9 @@ description:
>   properties:
>     compatible:
>       oneOf:
> -      - const: qcom,x1e80100-csi2-phy
> +      - enum:
> +          - qcom,kaanapali-csi2-phy
> +          - qcom,x1e80100-csi2-phy
>         - items:
>             - const: qcom,glymur-csi2-phy
>             - const: qcom,x1e80100-csi2-phy
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
