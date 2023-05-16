Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8461C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 15:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To61ebIkPqARHFUdt+FdTdL/uwf2sCIEAjY2E9FaQcU=; b=z4KuEEkdfPTzOi
	ETid/LoSCFFUYT7CAG7WIaSkOo7EJ9mq3xv3bQzwD3bG8rDs3oXVqq9Qw5uoz2+jj/KK07VQJ5aOV
	KOBajJHOUdXYhD17QOfT1sn7kbzwoWGYRIutk+Y+VpsKYzfKkaCr5+c5KanP50ElFsoCxrNMllAer
	hqedv7w84+9bZVgTUETH+m4Yumj2pgnRnl+KU8JiJ5y/ENQSBP8GNxPsFEBtIrM4/GTJgLuny2LT/
	TvaN8QB8pXXuu1nL94baVbBNN1kPDIHGMGYYqTKczdNA0WnFy0TQTbpcCNG9u2SyrF79Ti+0+VENR
	/3A9ncG0NVA+eiCB5D+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywGY-006C13-1j;
	Tue, 16 May 2023 15:07:06 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywGW-006Bzn-17
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 15:07:05 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f475366514so52215135e9.2
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 08:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249617; x=1686841617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tq0XF7+PR1y9o2CZoKmF6U/m48kNTTAS4tN4W2zzPWo=;
        b=ha7AFsQELZOGiPCowhQVUhOsNZnSyXCe/j+KcIUVhuXNM0PCgcgaeJoIzfjY7RSwPN
         48+j6+dzld/n3i5Sgzawe3+fdxasZsj3g60SCSfCcbtf7+dxSElVXXDb1Ok0JgezZPKQ
         HxE0wWNVkT/kobzZWmWC+Q6wvgv1BZwkl0ab/+4vCH6CjbAB+6DBBB3sCi+dRoXSAivK
         U+M7nk2jByhvDz5ZEg79265k9LMIeyFKavjcowfXCyWhGe16C3i0cqPx0tTuXbBZZgkP
         hcoYH1Myd149q0vktPY2z8ej5baODQMpBKKcLyErbaXRig377Y44DnEqge4OhyX5glNf
         NQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249617; x=1686841617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tq0XF7+PR1y9o2CZoKmF6U/m48kNTTAS4tN4W2zzPWo=;
        b=D/giFqt5oQWGOx8cpP9xdzUS9nlxR9PE2wtctuAliZPWId4KfkgsmGg/Yt2RX5xloV
         UzAiDzwOnoSkVyJnQHUwpXygtoJW+FwsA67avR7U4GWsQe9F0/+3MifgrOL1gURTYDMD
         Gx+0frOHTip7OsCBWeD2XQpkWN3HQ2EWBDL3EKklagMYxFDl39yCng1tzVDHeO8HYUX/
         6AmOAuO57aR8QankGXUqxsS3pCG1o2T5qdp1WnaLvoMlw3fFm2GoQQvBWqdF0Ef7TLUi
         /8DQ4Mcz2V905ursyEl7gd6cpqx0yUym6qSy5or64z77QTmSM+kRxRYc5uF2Z3N24Kug
         sXVA==
X-Gm-Message-State: AC+VfDyjGD0VYsrJEvu8dHvxxsBczDrz54cbe2Lry75pkrdTHZSpQhYs
	103y3/cc7/GmQAZmT9Yo8BALmBqd/cGV2mT6jiKzWg==
X-Google-Smtp-Source: ACHHUZ4LY7SDyh/oGJpKHeooYFL7cLCCmViH03hkaW8zKvIkvlfhWmWvmgx6QJpMdS2kjMk7RGoJQtTUXgX4cRY8bBw=
X-Received: by 2002:a5d:61ce:0:b0:306:30ea:a072 with SMTP id
 q14-20020a5d61ce000000b0030630eaa072mr30132707wrv.53.1684249617400; Tue, 16
 May 2023 08:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org> <ZGOR+hvLMZLxl8fh@matsya>
In-Reply-To: <ZGOR+hvLMZLxl8fh@matsya>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Tue, 16 May 2023 20:36:45 +0530
Message-ID: <CAH=2NtwWxGbkN4Kpb-FrcKP0qD-ZMa56GQ9x-F4yU3RkB6K6tw@mail.gmail.com>
Subject: Re: [PATCH v10 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	dmitry.baryshkov@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_080704_413334_A175D8B4 
X-CRM114-Status: GOOD (  11.93  )
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

On Tue, 16 May 2023 at 19:53, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 02-05-23, 11:05, Bhupesh Sharma wrote:
>
> >
> > This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
> > SoC. For the previous versions of this patch there were conversations
> > on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
> > 'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
> > documentation.
> >
> > But after a careful look at downstream dtsi (see [1]) it appears that
> > this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
> > 'dp-combo' phy.
>
> Fails to apply for me, pls rebase

Sent v11 which is rebased on phy/next (see [1]).

[1]. https://lore.kernel.org/linux-arm-msm/20230516150511.2346357-1-bhupesh.sharma@linaro.org/

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
