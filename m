Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB185CE79A8
	for <linux-phy@archiver.kernel.org>; Tue, 19 Sep 2023 22:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHkikoAch74ErjAI/X9SHTMSHLRNKUr3sZ/IoIPUtm0=; b=IxvKZHbbXSbQ/e
	/7E2/GYxzcT+REdLZvQalfJohjLWMtZ8+5Zl58qjk5bH3mOpg9aqEZOzZo49KQWoeY8B79QZn7eHs
	GGjxzDsz+S/7IVk0JiHU/l0O+VWlb+/sH7ekQp0/nkpjsQMmsM1dXchKEHWBs67FmdSSn29w8wH9X
	/Gn+HQZE+HEVUUFQ8hrtvJn1TFZk+0ZZXGkurp9ckxEJRfn8XmUJxnH4uxlosAA3g5KMXSiUgDiu2
	4qrAHMj2v51U4qafcFvUufN95T5b7OLXU+n0lUtn9rNz0hXqPL7UprPtECFTzCV5WLMy4t/wDgCj3
	kEiPdAs8G/ppMmycNz5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qijEs-001NST-1e;
	Tue, 19 Sep 2023 22:30:38 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qijEo-001NRF-2x
	for linux-phy@lists.infradead.org;
	Tue, 19 Sep 2023 22:30:36 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-59e8d963adbso31488657b3.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Sep 2023 15:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695162632; x=1695767432; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWE12E4GSEQPScLBBOQ9P6hDatI6KkLL6gqpAgFkrJo=;
        b=ybEA7rc83m2kBoxiRJrdKWgbJGF5d+q1U15nmDpikzg4KoyqNDnxD9U3JV88cQ3luA
         eAebTO41q4NxkU4FmyvjRPUZIcyfxPPLgDvt+YPW3M3rDkUFldIDDA71sm0Be2fXiC3s
         q3tmMLi8pf2Z6KZ2aJyrjUmpwyX6qjz2+FugfuDm2QU2Zp3oISUHCFRtz8u29hforCrs
         p2aheb+obqBQb4QquEE4JfL/v2mWrbeMqKirknSnXvP14td2lFRewcgfIRSi2cKICd2x
         dH9AY/jo9esNP1cxMfSM4Te6FUZCPgrUnP0fVuUMoDd+B9Db029Hf+ttpDBbHuhVKwlp
         PiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695162632; x=1695767432;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZWE12E4GSEQPScLBBOQ9P6hDatI6KkLL6gqpAgFkrJo=;
        b=uHkAaHaJJZvdQz6hdXKFDVBvrLhOgteGpGScI+s4FK7nDYzGu3yOuCxSeUS62vfXnn
         cUo+MLy3ERvjflNgUk52moKOfNW5vKbxakdDk8iJpk/RovoveDbwP5jIUmEdTplTALlq
         KFzHNsxFqgR8Pk9FYL+prrIkWaVKNlYq6azUyq+E6XefaEP9kuXMSWLfIG/UX3VYA3fP
         UH5ZEFKmZlBVCYa/NGhZrniseFxEmp/tVl4c3TciHpKoAA8if5PCn+N8iNqQAEaNvSW6
         beU/mmJ4DiNxBv2RKhp6lV+LDOKMoEZC5J+lMWywhfFI2t0LGzvj01GceO7SnpCrDhud
         mPmQ==
X-Gm-Message-State: AOJu0YwBnSGO94zbekgJdIJwo0U+BR16Us6HQZ/ln7vFAh2nEjbzHN1I
	zLGx9Sd8qC1236VCmtjDSVES0CeMlvOmresJFSO+bw==
X-Google-Smtp-Source: AGHT+IEV8SVk5WgId3f74CGiOEcj5v/vf1O/cO2KcQDyXtlP/RbqH7RmWLEiFf0qFc30CL2l7x/95xY4aKHQ9wEx8sQ=
X-Received: by 2002:a0d:d88e:0:b0:58f:96d8:e7ad with SMTP id
 a136-20020a0dd88e000000b0058f96d8e7admr899833ywe.18.1695162632620; Tue, 19
 Sep 2023 15:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <1694411968-14413-1-git-send-email-quic_cang@quicinc.com>
 <1694411968-14413-5-git-send-email-quic_cang@quicinc.com> <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
 <20230919121524.GD4732@thinkpad>
In-Reply-To: <20230919121524.GD4732@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 20 Sep 2023 01:30:21 +0300
Message-ID: <CAA8EJpoqRBxS7HJrFdRAvv677hKJw+d_K+fN_4ABDrj+68r28w@mail.gmail.com>
Subject: Re: [PATCH 4/6] phy: qualcomm: phy-qcom-qmp-ufs: Move data structs
 and setting tables to header
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Can Guo <quic_cang@quicinc.com>, quic_nguyenb@quicinc.com, 
	quic_nitirawa@quicinc.com, martin.petersen@oracle.com, 
	linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, open list <linux-kernel@vger.kernel.org>, 
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_153034_968221_6B051960 
X-CRM114-Status: GOOD (  25.24  )
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

On Tue, 19 Sept 2023 at 15:15, Manivannan Sadhasivam <mani@kernel.org> wrote:
>
> On Thu, Sep 14, 2023 at 03:28:59PM +0300, Dmitry Baryshkov wrote:
> > On Mon, 11 Sept 2023 at 09:01, Can Guo <quic_cang@quicinc.com> wrote:
> > >
> > > To make the code more readable, move the data structs and PHY settting
> > > tables to a header file, namely the phy-qcom-qmp-ufs.h.
> > >
> > > Signed-off-by: Can Guo <quic_cang@quicinc.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 802 +------------------------------
> > >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.h | 805 ++++++++++++++++++++++++++++++++
> > >  2 files changed, 806 insertions(+), 801 deletions(-)
> > >  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.h
> >
> > Is there any reason to do so? Other than just moving stuff around, it
> > doesn't give us anything. This header will not be shared with any
> > other driver. Just moving data tables to the header (ugh, static data
> > in the header) doesn't make code more readable.
> >
>
> I think the motive here is to move the static tables to one file and have the
> rest of the code in another. Because, the static tables itself occupy 1.2k LoC
> now and it is going to grow. So let's keep them in a single file to avoid mixing
> it with rest of the driver code.

My 2c is that this is mostly useless. The headers are for sharing, not
for moving the data out of the .c files. Not to mention that the
driver code comes after the tables.
I'd really suggest starting such a move with separating common parts
of all the QMP drivers.

>
> - Mani
>
> > If you really would like to clean up the QMP drivers, please consider
> > splitting _common_ parts. But at this point I highly doubt that it is
> > possible in a useful way.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
