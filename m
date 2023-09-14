Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11869EDE993
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 12:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKWXqLlqIz8IdDwxuuQih/mQJ8ivktynvm37cSf0KDg=; b=yEsj/iV7p9rF9H
	rZ8IkdFNqXMOcNehcsxwAfPBhY2ArT69NxDfvRxUb1GSVyRC6mzptTJmsJZUQdmB/tu1p4FFaTASi
	OWHD3JNB9g/suimKo/pfPM+Jc45Suk7LfLqhJn7ELmHLm7xLulfS75y4HwTRw0j8FkzifG73bXVXf
	/CRNvAbB1Mo7wVgjHTwO0PKyn+JknbNTo6Pw5ea0DKwclqWoMzZrsrhWUdecom6KqPJrhBYpsmBmy
	BeNrlZJd/geAJ5rh//WD9hHOTWtm7StC3bTv4Un6BU/sLOzWREFU1uGcB2FWFd/Pdj3Ik2i3QLyXB
	Z/3WHN/AGLwfAcG1Lo8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglTE-008KZK-2U;
	Thu, 14 Sep 2023 12:29:20 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglTC-008KYI-1E
	for linux-phy@lists.infradead.org;
	Thu, 14 Sep 2023 12:29:19 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-d7820f9449bso950283276.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Sep 2023 05:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694694550; x=1695299350; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MtLDd3fxzJ2qWrurLeB9pHYuc3+Ev2d1hMk3Oahu1Wo=;
        b=V2DKpn67av6TngowH67799hrJspDvRL4oxF0bVEQYApjLOnYCNaZY59ijI01PaENYb
         lzE/eWB3HVVt1mF5DSo7Gjog1A95J3Eny4GK1tgNYWtM0JfLFo+eKlOU1i20ZhK5HVze
         s/WFheRwtliYtj6KDry8c5mCNjny8LGEXSGLrqf4B6egFJq4o31O2yYIABB9rZaySkKi
         rAYGrHl3nx3PBaDKAvZ/WrveP+UqpN2jK6Ucw5eCFGEVgus07tDq++3mYV5GwO1uOVWh
         oS38wtL/3H5NzVRu4wjz5YWjvxnSvfb9qbghl5PxNDbiDa1aNH0VgS9o07L60P1nc8pv
         jsZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694694550; x=1695299350;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtLDd3fxzJ2qWrurLeB9pHYuc3+Ev2d1hMk3Oahu1Wo=;
        b=NPHiMGK1QqDjMl0n+nXknhD0MmnvjOp+W73CLDQiq3VG/dRIDFE3tH1gpV2bzUqi/x
         plj4cbbZ0+UKJB51XjSe3DYm13eng0HuJL98DdGYOV+/1rnvAiFu675a/oF+mUa5WUl0
         +DJCjb3iWrXqgoD9zcCkWIPovodSUOhvyj5M6TOZbPAHZXYEoX4x2F9rWirUHST06yDC
         6rW1cQmXiItY65MV+oHhYn2CG4GAkEznXufcofCozRGKp1MrRTFgdPMyprpjK8JSd7Ph
         R5YgAg35TS/Q5twpm0FIaZrbT0G/5Oi+pg4gNXC/CzqcRttDCdUh9tUFnwETzVkl4LP8
         tO3w==
X-Gm-Message-State: AOJu0YwU8TCclSbQawWPpsOGsogE/6hAL4o7QWwzVRCGAMsIespQyPtf
	xKvQITJmL75QHPPwn3qG3KGGJNUdhOLQE3JXysRoYg==
X-Google-Smtp-Source: AGHT+IFKzxsuOJHD2I2G9JidYU6beywYTq4S1b179IHAIq/bnk1xXw7mkm/fBLJ/vc1OHT+Dq/2wiGVPBeOWWrBBbDg=
X-Received: by 2002:a25:40d:0:b0:d7b:3917:4609 with SMTP id
 13-20020a25040d000000b00d7b39174609mr4683812ybe.19.1694694550698; Thu, 14 Sep
 2023 05:29:10 -0700 (PDT)
MIME-Version: 1.0
References: <1694411968-14413-1-git-send-email-quic_cang@quicinc.com> <1694411968-14413-5-git-send-email-quic_cang@quicinc.com>
In-Reply-To: <1694411968-14413-5-git-send-email-quic_cang@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Sep 2023 15:28:59 +0300
Message-ID: <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
Subject: Re: [PATCH 4/6] phy: qualcomm: phy-qcom-qmp-ufs: Move data structs
 and setting tables to header
To: Can Guo <quic_cang@quicinc.com>
Cc: mani@kernel.org, quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com, 
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_052918_419448_8BF4BEEE 
X-CRM114-Status: GOOD (  11.86  )
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

On Mon, 11 Sept 2023 at 09:01, Can Guo <quic_cang@quicinc.com> wrote:
>
> To make the code more readable, move the data structs and PHY settting
> tables to a header file, namely the phy-qcom-qmp-ufs.h.
>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 802 +------------------------------
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.h | 805 ++++++++++++++++++++++++++++++++
>  2 files changed, 806 insertions(+), 801 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.h

Is there any reason to do so? Other than just moving stuff around, it
doesn't give us anything. This header will not be shared with any
other driver. Just moving data tables to the header (ugh, static data
in the header) doesn't make code more readable.

If you really would like to clean up the QMP drivers, please consider
splitting _common_ parts. But at this point I highly doubt that it is
possible in a useful way.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
