Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 719BCC71153
	for <linux-phy@archiver.kernel.org>; Mon, 28 Aug 2023 15:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/JzxxcDlgm9LMLdLOFlSTUnfJ1SJbU3d1K7AmRL3dQ=; b=YujOVSFTsxTdMb
	4w4WqZoovBBorY6NsJ/tRN8gjvoxImIu8RWytqWmh14PeoLs3vWNGGJAXgRf25udCM8CfGpIBNW8y
	JgfN6V0xTZv9Qk9fKYL1/CpT6ZDsxyjVkv+ltNwLf4+J/w9SERuTdgZCLqW9dsZsRq4cb8AwLJAAn
	yRoxA17TjzWx3LTH8RctwEIrPuHHIyv9ECDr3Ebd7gIvuREWUtQtyB1JB6nO9KzWME3n8zUarsbxJ
	szVAoB6fo0eWTypYrYdysC5iR0xEMKwqW0ZMc/FVySxujNzUZ+XAp4JHXDuDQV78oVt6LG0xXtUb1
	wDNvciIeySC7zYYXctPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaePd-009ort-06;
	Mon, 28 Aug 2023 15:44:21 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaePa-009orG-2C
	for linux-phy@lists.infradead.org;
	Mon, 28 Aug 2023 15:44:19 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d7830c5b20aso4271788276.0
        for <linux-phy@lists.infradead.org>; Mon, 28 Aug 2023 08:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693237455; x=1693842255;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FemZS8VWPOulUCmdGN9kQgxO+l7x46lH6UViND/XB8w=;
        b=VuyOvdEgp5Vdthot7iLwnrYTPCrxffA8kTgkypuSmszxRfwTJyNhWqwDimTmsqNQvV
         UlLTgyb7ivVaxjz9ZtzRHRUu4Pqbc/K0oYQFWsQA+Zo9NyfPt54Isy15+NigDZmfLBBG
         sAErRyNGkkAOygxUmAcym6q5fJa89zjb/py9sE8joh3wXksCGCzt8d1eHfOteKU+3fj7
         Cj/Q2FBoKTCDuKHYHpyTCkeWdnocSJ33UfvZBaF5kjZ2R6VPPPRVMD1ZkFIvTa5+FmKj
         Pr6DH74J7z4QzX12TauQgGM5tm9OUFCPMdkTyxCOwqlJTFX+nQtGhpqVBILYd75DHwsR
         RXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693237455; x=1693842255;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FemZS8VWPOulUCmdGN9kQgxO+l7x46lH6UViND/XB8w=;
        b=mESidJpg5g/RaQ1c3BHVbtC+6wmYDM4MCKACQXcRE631JFDuWXaPgnsTsNnyzbaDXc
         CAJh64PT9/dJFXQWccpiFkloqJRRPgXAXfp2jeJxn3JYu3EMWlqLr4sJ1H7v49Sv3Hbf
         VakK9MIchHtBhda3UnH8i5kmqgvzmnBfInQcUa4hd/LWxyANCNguXVMbZopgNscyJfYV
         iSVTf/aXm6Jktz0BtjWmwlKKlwbKkzVwv5vI242HVk1kMr63ythaLZRho6pjNflfzO2q
         WIUtXd72QXwuyFadTWDm4mCJUsykBA9RME0c/ty4cRbfD2YYbSOhzXHLQY9R2xGJzz6c
         P1Cg==
X-Gm-Message-State: AOJu0YxgunkfMcmOFS1uvTC/saHV7oBsLC9L+/twfCYWRbLqQVaS6J0e
	efgXT9GgQdMxlhh7dkUrQ3tgp71qeW8PMewbyLehnQ==
X-Google-Smtp-Source: AGHT+IGKhafr0XWogGuIMMOOZIJPm0MmxxVwI28CARRyw0rUK4kSwJe9qcO6O/jXfXr8J8a/LK0vhFZ7W0tt64IlAPE=
X-Received: by 2002:a25:aa25:0:b0:d78:351b:8661 with SMTP id
 s34-20020a25aa25000000b00d78351b8661mr7874ybi.3.1693237454787; Mon, 28 Aug
 2023 08:44:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230828152353.16529-1-athierry@redhat.com> <20230828152353.16529-2-athierry@redhat.com>
In-Reply-To: <20230828152353.16529-2-athierry@redhat.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 28 Aug 2023 18:44:03 +0300
Message-ID: <CAA8EJpow=mZkp6zH-C7=kWY6W03zXyBWFdvifjir4EEa80=aAQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] phy: qcom-qmp-usb: initialize PCS_USB registers
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_084418_719979_E076FE00 
X-CRM114-Status: UNSURE (   8.62  )
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

On Mon, 28 Aug 2023 at 18:24, Adrien Thierry <athierry@redhat.com> wrote:
>
> Currently, PCS_USB registers that have their initialization data in a
> pcs_usb_tbl table are never initialized. Fix that.
>
> Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
> Signed-off-by: Adrien Thierry <athierry@redhat.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 ++++
>  1 file changed, 4 insertions(+)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
