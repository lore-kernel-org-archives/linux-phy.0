Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41491C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 08:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGVEOJ1eog3WLQlbW2KGpL3xvpUmDCbjQaZgA15UVN8=; b=ifeP81fc0wEYx8
	Y/dATAWqkAgj8Tt/b5zOavmAWtvEfRkhvw+sBrZB9DlCGvTMlKjbTDoc4F2v5eNncjn05cuh5l05L
	4oBNZWChRiY8zqsotDRnzRb4tr8mO1UfaPzI9HMoagl89YfulYp+lVP99pi8G6Z1sOjq1eYiABT20
	eluzr5bXWJL1zOj/Sj1zSk8RE40GOnYDNkmUl94PP9vhRB5NTAG3/OqINKW/vNq0UwGHxysCc315D
	oiC4FzYt14ShIjtTALehrcei8whT8Gmhi/9JrMn1Ls2S5YNSv8FxojqqjkHh9KRmGNzChf+Vslv/M
	NjSQLkpFbw3Feu2NtANQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTHI2-00000003Q8t-3qKV;
	Fri, 26 Jan 2024 08:10:18 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTHI0-00000003Q80-3Fdu
	for linux-phy@lists.infradead.org;
	Fri, 26 Jan 2024 08:10:17 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5fc2e997804so1120797b3.3
        for <linux-phy@lists.infradead.org>; Fri, 26 Jan 2024 00:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706256615; x=1706861415; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t5Xk1RT4M0Csc/jUPQRNsGr5hsLf0lR7LKm1an0iRCE=;
        b=Nu7xDtvFGQaPR5SPAiTToi9jSkCcJcbzmDCbG1g6UWSlaYsAGl5/3dYArzO+DV7E7d
         d07ammPLu3/3njxwKO857E3QvQXaJqGv9qQl+dpgHjxH4VNo0KVRvtEnp/DTb6jvd0GQ
         gvBlnJwdUpa+0DLN3AP48rY1kMX1l+5LXRpmlfCMULL+g5zOnrmPARwQ9tlKPPmeaUQr
         N4MNA0257EWTSpGNE1MFGTXJ4KF/zA6YDkdGMdmfhO0nGwUw6MBV3rkt9gIJqiwvmIfm
         PpMbbYEY51KKrZtxX3lQ0YJKrweS106ua0mmgiJVSUHDhZMRehD+hlq07mSispG+xi7S
         rXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706256615; x=1706861415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t5Xk1RT4M0Csc/jUPQRNsGr5hsLf0lR7LKm1an0iRCE=;
        b=nVmBD9HIwUHVlRTgVUpyXpwSyLvn3Pb5Kyl9FQqKpj9Pau62hnsMpfDFBurvmQggdw
         V9iXBKttrQTGDtmZoRWTTSZ6Z4++4QFf+vj9rR2HP6NoTPPkUymJiBLprH1+lKYe5FKl
         RZl2F3rHmRG2I2MUbop011wkW0fab/EnNywkT/9dfTk00dKncCc23NI0FYBJoOdBfME8
         Pi4Q4ygvpVM3p3a0OHv1ESBEi+P3Q3vxroc2+C/0Iybgg8iNKzZVpqfDvWcoC1GVbZ9K
         qYmlaLe9tpdj0IpIWRipSEdyzMuJ+O4IUOK6zkUcro4hUQU5k8jrPWEXgHGXdBub0gpY
         8jrw==
X-Gm-Message-State: AOJu0YwvvTk8Xd2Gy5xWOOe8I/nlzKryJIeX+kq3/vIcf6kKgnYGYLyL
	7pKM56gRa7hLtfMwQB80yLjhLggSYvS6uuoZf8tYy1XAmd8pm7gdiAbYxrmXuCXLna7FX0JMapM
	ATbBstRqIWy60TbWfYJIh//EJFNawjwwGOmLTNQ==
X-Google-Smtp-Source: AGHT+IHnaNC5K++PdbgO7WEfWh0nVAaXrRXgiWebU6yDcX8FPmozYPH++dLrlUkis2bR82+yU94dtnUxE8v98Ryvz0A=
X-Received: by 2002:a81:6d81:0:b0:5fc:d382:4bfc with SMTP id
 i123-20020a816d81000000b005fcd3824bfcmr959161ywc.97.1706256615398; Fri, 26
 Jan 2024 00:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org> <20240126-phy-qmp-merge-common-v2-7-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-7-a463d0b57836@linaro.org>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Fri, 26 Jan 2024 09:10:04 +0100
Message-ID: <CACMJSeuOmz2DC0m98k9MFx71A-9jyZkrWQMGt8DVUrqKJk-bsw@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] phy: qcom: sgmii-eth: use existing register definitions
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_001016_848670_D70F3FE6 
X-CRM114-Status: UNSURE (   6.96  )
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

On Fri, 26 Jan 2024 at 00:23, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The Qualcomm SGMII SerDes PHY is a QMP PHY. As such, it uses standard
> registers for QSERDES COM/RX/TX regions. Use register defines from the
> existing headers.
>
> Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

I have reviewed v1 of this patch already.

Bart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
