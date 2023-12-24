Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FAFFC46CD2
	for <linux-phy@archiver.kernel.org>; Sun, 24 Dec 2023 06:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlwBYTK4iPivqD4MVlB9Z+CqDDDbtd3x1XL7FfBLDHE=; b=pvrYGLFhTM/IJJ
	PBiXF5Il3QdFUgqxIW+KAw7WB7b4hff/zlIixbacLHmaXHxEkiUNczZBVRnFaktzINhhpCIpr9ybk
	9lUJ3UwxWUyGtRz4qQI+aS4/uVss8YtSopjKtWdC/x+5pk3kA7McH8g0ieF/cRqaUvijvEBHAQfZ1
	hok/EoFidIyDAtjT5AXKWAlBt+k8N6LSGwoKrHNm+7magOfDOMt3qOJ31l4TYMcCJwySqCenn7Jwv
	UbVE3vzKd0P8gNmvwrBmqlhublNZEexSyOBCaBH2qP2VpHwwb7GHfyZP9JtNnTk3ri1J+me2Mn1Zh
	sngMM5dIblQzKrtASshg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHHqj-008xJS-34;
	Sun, 24 Dec 2023 06:20:33 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHHqh-008xJA-1z
	for linux-phy@lists.infradead.org;
	Sun, 24 Dec 2023 06:20:32 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-7811c58ee93so184673285a.0
        for <linux-phy@lists.infradead.org>; Sat, 23 Dec 2023 22:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703398829; x=1704003629; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dY6JLnVxrEsnmNyVP0wd7jgyz6XGLyt39+/qdJ/qmgc=;
        b=ldC+YsH0xkq0P3KRnUvPZLsxKseb3hqokbr+sc4W0JWLcFf/QRHyI0yJxyVwx9UG52
         iR5uhBjjRefqItVw9HjovaNMcJUe5QL0LJ41pTM2EnwkdwRRk0kcFNAG/3QXanqqogY7
         MlgJC4QsDkbk7Ua5Idf6a26D4rAsuU55wsg5Kf5ma76qbq7Bk/vW/pdYAs0h1mxW8ZG4
         +1ScJLSDxFXi4j6dgHtvEYBo17MXqvZIgsLTV3/zRMBFp8GFrx0M/iVNKWmW/jBv70af
         Rp3f63Tw0TycB0pc2qqJccVdyroI6Oz0Yxoh+XKlG0HrHIhwnTG6u3SCvV0u2h2tu7d8
         3qZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703398829; x=1704003629;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dY6JLnVxrEsnmNyVP0wd7jgyz6XGLyt39+/qdJ/qmgc=;
        b=KRXpJnhU+hA02GJ3wLzyxg87RbidYdmGDLFLGWsssGq+ez/K6NCzf9OvFNK8hZP/W6
         gfz5X06IZwDLutxVfLxxaJF1bR8YwZiYDuyuMBCicpD99YND+5zaRjKAuB7yW/qWT/Rf
         tWw82AF8EFMM+13MZdQn1pIxoZ6x5NTNoXPjmtGMMd7yAw/klHHm3pkaiOYtSPw8VWDz
         NzwA1lTSnyglbkOkdo6AuqvsWCmFZpDPZYcEvVRIj/9RNqpUplcfhoa/Qx8ilU/dfXMx
         KRL/ud/dtgOh/8ap0/0qjRjd7EKVL4arS56F4dp6ulHMF7YqrMuAp1OKP4QgBH+4iOmX
         PJcw==
X-Gm-Message-State: AOJu0YxlxuijpeQNgsTrDW9W3ovsHJvIC8DfBvF9F5aiOFMe5/m4iGM6
	VqDsIuGAQ5LcEswAgz3XUdCOAE1lC0QHzyQrx04poHmVAceGGA==
X-Google-Smtp-Source: AGHT+IFOkGjgfNXHmSpOEjsFf/qZU6hAt4ef5UIQN1lp0Pp+H580Mc1NlscQ7QMxENom9HXHMQhwDP2uIW4atBCUMuI=
X-Received: by 2002:ae9:e214:0:b0:77e:c67:32e4 with SMTP id
 c20-20020ae9e214000000b0077e0c6732e4mr4045914qkc.23.1703398828926; Sat, 23
 Dec 2023 22:20:28 -0800 (PST)
MIME-Version: 1.0
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org> <20231223-x1e80100-phy-pcie-v2-3-223c0556908a@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-3-223c0556908a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Dec 2023 08:20:17 +0200
Message-ID: <CAA8EJpo_mFVvvB09e-nLT_GuTAdd_XfVLeVEzGbUV26hJ=C9ig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-pcie: Add support for X1E80100 g3x2
 and g4x2 PCIE
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_222031_662190_EC38B2E6 
X-CRM114-Status: UNSURE (   7.64  )
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

On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 G3 and G4 configurations.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 173 +++++++++++++++++++++++++++++++
>  1 file changed, 173 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
