Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE69FC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 16 Feb 2022 03:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQFAQP5ZXUVon/0asweoS6RY4A2N1KSTHDWdSWRxhKI=; b=1fZQ8b9i6szOmi
	JZuM8GnrCdWtffKJUKfNyCGzuxUmF6GhcCHbSRUvWs14DKa0+zMHHz6+HwyBLY/WpCkGkG0mlVvzm
	SejWCqVGkPhYSQ4s9BVoLEwyOrBNrObEFllGrAEtDEgGY2ZwCIXvn2qehRhkUhyAG5gc1MaXINIpq
	Mtp7lmeCVSwGHBw8tCgACdLp5IvqoAzH//muXUPR5Eva5QcRpX4q8ICb13usQelZmqlZ3otDxVjbu
	DVrAFyfpcz9vWorKdBydTeMjqwRNoZSECGfIOzLmBl6oS1kNEpj84iQpSt8R6rY+ZHp3xU4rZ2kM9
	v0VUYjEHJFdd4g/v34KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKBHl-005Rpf-Bn; Wed, 16 Feb 2022 03:47:21 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKBHi-005RoU-VZ
 for linux-phy@lists.infradead.org; Wed, 16 Feb 2022 03:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1644983238; x=1676519238;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rpw3z4mr4YAi4etcbDDl1YczzPt53WRqNLudJjmBmrA=;
 b=G7d46UWzuk3NT6m4y0uV5U7s31Znq4XrdjADRgHI9F0NfweXydiwTeyS
 uYsEMORfAqkUmVwzn6cQO1gAObGlrHtGeHkPWh86VSd7Bo1sxiSkWoIZC
 kyv6cQu1R/XXRERaKysfOxkzeWloYnB4efeYVpc23gg4aElc+ceWu912U c=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 15 Feb 2022 19:47:13 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 19:47:13 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Tue, 15 Feb 2022 19:47:12 -0800
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.922.19; Tue, 15 Feb 2022 19:47:06 -0800
Date: Wed, 16 Feb 2022 09:17:02 +0530
From: Pavan Kondeti <quic_pkondeti@quicinc.com>
To: Stephen Boyd <swboyd@chromium.org>, Sandeep Maheswaram
 <quic_c_sanm@quicinc.com>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Doug Anderson <dianders@chromium.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, Matthias Kaehlcke
 <mka@chromium.org>, Rob Herring <robh+dt@kernel.org>, Sandeep Maheswaram
 <quic_c_sanm@quicinc.com>, Vinod Koul <vkoul@kernel.org>, Wesley Cheng
 <wcheng@codeaurora.org>, <evicetree@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Message-ID: <20220216034702.GA8486@hu-pkondeti-hyd.qualcomm.com>
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
 <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
 <f1b4b389-12f9-7c21-b117-f2fe6df58a89@linaro.org>
 <CAE-0n52G6Cu8douv_KuQEeVM-3vnwGT4dhai8kmiLJ4Fd9Qz8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE-0n52G6Cu8douv_KuQEeVM-3vnwGT4dhai8kmiLJ4Fd9Qz8A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_194719_071129_D0D4E3B6 
X-CRM114-Status: GOOD (  13.06  )
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

On Tue, Feb 15, 2022 at 06:10:45PM -0800, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2022-02-15 11:55:18)
> > On 15/02/2022 22:19, Sandeep Maheswaram wrote:
> > > Add support for overriding SNPS phy tuning parameters in device tree
> > > bindings.
> >
> > This does not really benefit the users and does not help developers.
> > Could you please change the dt bindings to specify values for
> > thresholds, durations, impedance, etc. The values should be represented
> > in the human units (e.g. us, Ohms, mV), not in the internal register
> > 'bits' representation.
> 
> +1

Agreed to this proposal.

Sandeep,

We have a similar implemention in QUSB phy driver. can we have something like
that for SNPSHS PHY too?

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
