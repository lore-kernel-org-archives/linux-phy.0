Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED31BC10DCE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z77vya+gz0TPYkTDcOBRZBGylSUWQQ2LrAWQzXO+rco=; b=GdK9K16NdBy0qC
	CWdjkPeTPh9pfHyCJEUPrY8l4Ptanov4GI4aIF3bNzYVx1dttvNJCuBsfhGVXs21I9bOx81vH2i/t
	Z7xUiq30rdwtVd8iXdGSSUnHe5KxIE5/jQIRx9pcmA2exRLH0bPYoUX0IHZdPX3WY9sBnrW1xFvar
	HGWj9eJ05DrPrPmSk7gFfIAFsGohUXoiCiphh+P3e47ipFg4/WiHDagj/mhVuJiN1FfvPpenZQ7uL
	8SVwfLx7omX0fUjyPSj0IAxsrNBR5p5syN9MptGo/7T15oNHIqiQDODjHXf6DYhfLZ1mJnsawKc4T
	1Q0PwkfNCzVwmOpsb7zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDQR-00CmP2-2G;
	Thu, 07 Dec 2023 12:24:19 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDQQ-00CmOG-0B
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:24:19 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5d05ff42db0so6128017b3.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951854; x=1702556654; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MiKLmLIgvazj+jtVgQtH7JvD+NHtPSGxW4NwV0BlIco=;
        b=mfksfOv/DjXztGXpp6MYgWMDyaolsPCB10xBHABPH5nnzfvDRvLjIpTRCcKdRJJ9Oc
         CoieJD+kEXsbyHv6UuOxaRlo/PhBCmQZCXQhRIaEQz/qc4YORZp6SWNvYW2d6f0WxmDQ
         jOLdm3jBlvwbbBftL5QhuStc0rr2MXmhQqd0fGICnsE4ymL6rBlfqS9c9KozLd5MsAml
         fm/LjDphSL0Pu5FrxCN3sC59SUDBF4m3j8sGfRX7SeCLQCrP8EsWAPdIDtrUjpgG+l5Q
         SmcDBHv8xMonygdpaFlyIWEQVTuionwRRUANyBQH8vvGzEXial2B761KPWzz2nMn2mrY
         Igzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951854; x=1702556654;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MiKLmLIgvazj+jtVgQtH7JvD+NHtPSGxW4NwV0BlIco=;
        b=ITng3Yhg+QXWt0+IXuoEmOTVjjb9blrDpU+8x0kHUGce3mboMiCzsw5MadfY59midx
         7hXZUN2jh1didas3U2S0y6LqPDSBM8eT0CNcTxFlJ8heMICXTk6AJQq2uJ7oPZrhkUHu
         xxMTE/U40xLddm3Dm5z2QFgrRPOtKL2Uri62UWW52YDu2hBADwebhxfd6pp650gkdLIm
         C74pf2wjSfwQaQF2ym+7QXphiV/VhUxqdde3eXitVdxPJBRw92KC2Z1tBUcHDKqiHE7G
         DVRgGL3h3BMFoUgnU05rPrXhsgRni+S9QGs9MAIbch7+TH6XB4bMgVg3OqBknaH/5bku
         RKhA==
X-Gm-Message-State: AOJu0YzSbnzvYvA3FJyNpqpjN0l9hG9plz/HzwB6XhlYt6cQHNxBDlha
	oKNxQX5+NcpKI2Eyt0PdDlcOLQ0K8I4seJuPogP6bg==
X-Google-Smtp-Source: AGHT+IHqCc46uHXGyBjJCpF2wowIEkat5HWL4fNDZS1yBZyQ6JsjmMrOr0YV4JZnMRdfN+polaHzy3D/khi0W5LPnYs=
X-Received: by 2002:a81:ae16:0:b0:5d7:1941:2c1d with SMTP id
 m22-20020a81ae16000000b005d719412c1dmr2049988ywh.74.1701951854242; Thu, 07
 Dec 2023 04:24:14 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-3-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-3-dfd1c375ef61@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Dec 2023 14:24:03 +0200
Message-ID: <CAA8EJppHjA2VNBwD=EjcBSjqGtLcc=co8M8QjzjWi93VDSTOAA@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] phy: qcom-qmp: pcs: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_042418_090864_509D2D06 
X-CRM114-Status: UNSURE (   7.27  )
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

On Thu, 7 Dec 2023 at 14:19, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB,
> and PCIe. Add the new PCS offsets in a dedicated header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h | 32 ++++++++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
>  2 files changed, 34 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
