Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67A00CDB465
	for <linux-phy@archiver.kernel.org>; Thu, 19 Oct 2023 13:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfvUBZDsUQcbqaXEScyuKV1s00O5f0wsoyTL4OLrf68=; b=cxwnmi4386lIJa
	QXk3s/tXybWLP1sJpDiEvsgsvHYDs0OseO5t3NyPC+rbbL+CHhNKhOOR0Mk9iePnCZccNSMQJDaWq
	D61NLg3v0tyuWgn6JJ/B9I3HZ2IDRXvlQyk0jNQdwTM21jKWT1GfQkkUQ7DRCEVR6PkE2d4e143fP
	9XUqErRshyAZQkQpzN7Y9JbhDnPVG71Xk+J9i4f03yKgObaqweB8UEK4VqbpY940Zozwff8wdtndR
	Xc3YY8/jt8fI7MrELi2Fal64XM7b+fzJE6YwPNcO6qZ3jhQ3CIo9eF99w65u3JVKOmgmWysTrHZnW
	lOLN/qZWpBsvabl4Ndxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSo7-00HUea-0I;
	Thu, 19 Oct 2023 13:11:23 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSo4-00HUdm-1T
	for linux-phy@lists.infradead.org;
	Thu, 19 Oct 2023 13:11:21 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a7b91faf40so96992697b3.1
        for <linux-phy@lists.infradead.org>; Thu, 19 Oct 2023 06:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697721078; x=1698325878; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mKyigxz0xjpNw4M9S8MD6bISZmwbP5guXuL2FXnbjpY=;
        b=OYovnWo6UuotQGYEanKHi2k+kzDup9hrvS4ZNmyFPiX0p5nDrVucc+6OwhCZzOqBGC
         BvKxjcXRPzFIaGVp6IAGjvCoLqE6NitobqMcdXFkb8eidtmy0YxYdRRCBpj2zHfg2JeD
         EjrA6tEAzR0K0UW+jngxO9saRbvXwbszHlGCfj/R4lJtBKCBudgG36ZPHEwGk+S9keRV
         G8c9EJGKfEe+qkVu157qziJckhMHApIgz3t8EgZe0enJGfmu1mgvG804xgps7FPVfawO
         WmpuxLtohlqdVSij4jVp+/Aw9wV84yDSbbC5P0K5oUySlU/9ouLwcaqiv44RnFjfetEN
         okAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697721078; x=1698325878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mKyigxz0xjpNw4M9S8MD6bISZmwbP5guXuL2FXnbjpY=;
        b=aWJWr+DQpQjztkbJqz5Nmwh7BvlfO2yQcphjP9MfXXPHsJ1vtKLUtXnksfe4dGsD6x
         6OVFyhCcv8/TOx5DwX0xnKRYuNHkDBx6Ego1YW3fv9NJ+B2GkDOHV2Fb3m93icas0FvP
         Gt2zNqUwKM+AsNTfyAkgd8yl/zf2TiuuHAX1u0Zz0+bn9Ow1ZcgmN4EDLDHjj2BKJivA
         DZo9Yr3y19cwdsb+fsgHStokui14BCV63meIby5JiWV2Z1IbZyJwWl0POR71DoRYIlYu
         fF/uJnxIJlKTApnLYN+RNJksSn/Um4pG06HY5fGcwV6wANBuPk2DumXNdC22uJlcchg3
         xOXA==
X-Gm-Message-State: AOJu0Yw/WKzypC+HkHFmULO5epOGay1qpoZeVqe+U+8hE+n+J8mO8KHK
	EwiY1+w9kCoq0cxnHI/paoQN32hmQV0tT4JflnTfGw==
X-Google-Smtp-Source: AGHT+IFTDmViD4G59KbU+RTJg6WzdOrllTZxG71eprBWbjW7yf0Y2TxoOzGTmJh67kNKv4S5EHKdAM9I6+sYql2eQS4=
X-Received: by 2002:a0d:c1c2:0:b0:5a8:1058:5d97 with SMTP id
 c185-20020a0dc1c2000000b005a810585d97mr2524844ywd.45.1697721078519; Thu, 19
 Oct 2023 06:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com> <1697715430-30820-4-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1697715430-30820-4-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 16:11:07 +0300
Message-ID: <CAA8EJpoAQbTT6KZWeD4_PSxDCG0tZ_PvGmUXxpAfHxrK5CAUcg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] phy: qcom-qmp-pcie: add endpoint support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, robh@kernel.org, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_061120_490620_F83A3DE6 
X-CRM114-Status: UNSURE (   8.18  )
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

On Thu, 19 Oct 2023 at 14:37, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Add support for dual lane end point mode PHY found on sa8755p platform.
>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 37 +++++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h |  2 ++
>  2 files changed, 39 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
