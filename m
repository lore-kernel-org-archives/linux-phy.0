Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86712C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 09:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7LIwTjvUBPWGS4q/RliOyEVyjJ9DTkZtdI+7STSjwA=; b=10zmfNBizcucv5
	RBCy7cfpfJuJ1ECVmGGJdUcxvRgGbP/pLevUUi6bYohqVFGoFyIK4Ep1rvl5kNDGdnHzQ+c1rROU6
	miJvQigJwxbDKDGDCM/3jhkCdpG7ZJwpIg4Y7YlU+8Yuja0Uk3RtmBJu1Myyau1O0l+HJT/GAwVLB
	LFhKV0Rh5/minQTZoCKHLKTmWkeUMSqrChN+6hDnJWVJhg42F2vaGCDJUdqutQAXmOQjkA4cmIT2P
	GrHw8GgDDTneOeTVRYjdnn6RUQCYPJI0HrrDgrzk5klihG5OXCFhqYj12TQVTzlC3UXl7m1fE6ap/
	HRlTsKoFAUVtTcSXXnSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPJdj-008Ts8-0h;
	Mon, 15 Jan 2024 09:52:19 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPJdg-008TqL-1n
	for linux-phy@lists.infradead.org;
	Mon, 15 Jan 2024 09:52:18 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5542a7f1f3cso10262167a12.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 01:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705312331; x=1705917131; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zZFT1yFxYlVkgqvKMiV1rHlNH9vvM1PcstUoRcD6u4I=;
        b=PUbAhI/gCXestbMJYgTR9n/qyJmiajyEK3e9lEaeSX4Vyei+CoY7lI/LC4RPEKULeG
         6cU+jYgh5Ar8qT+H7mm+X4r474x1rhdFittsRdj2urWZw/mgg9ARK2gozILIcOmuL4XT
         9V89Ezr0tx9+2Y+5I6LGMMMeQfKgAx62zX+z5W8/w4ZuHaOfIKixlY9q0sQm9o9o7B8X
         UIBHEHpb9c6HuXxb8lfv0qUWKXz3aaIPIxRCxNpwds4r4Gi8WCnyFnmXhmi2pTFZIZIZ
         zHWk1gLD+L3mu49X8bioGWA8d/gVKcRNq2yiGKMyPVv3fFB/qHJPJ3ix9X3tPfWl/+dK
         0M6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705312331; x=1705917131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zZFT1yFxYlVkgqvKMiV1rHlNH9vvM1PcstUoRcD6u4I=;
        b=dYfQiDG64Cq+NQoxSoANgQoPmIhZOfZdMPaeEwJCFgeA6v5dEvNIKh77ttL6gDnnqD
         h2wIgdoTA2yAviIZ8dORbPY0W1niwyKMWiq+xY1mPIh0povx1mVpAPnvVkauM3q7ihLj
         pKGzW5oeSKQDxKEQ+4IPzJUvH4ziJs8zjf71CvvBKkvxjhNsMP4llLskyecKGRzfynzM
         VH/SqnzPg1qy2Dt+G1f8Ledy08pwPydVWnNoWCHaeu3cRn41aok8sDGm8figvStPGxzi
         Z37Fy7UbsINm6PXzv81EIgIwV7B3jnvxwCA9MlAKc0yrLI9FQeJj/jqsX0ECOSvFlTNO
         LvaA==
X-Gm-Message-State: AOJu0YwPKf/0tQhXasQMNrSeDkBCdQzQu27GxRYhkfYsoqCf6G268sGo
	VXJWR+nZD99AwvXGxkkXYLx7KgnYJ4ujVw==
X-Google-Smtp-Source: AGHT+IHBVQUjjN8/aG9IdhmJJPXEZfd8a0pPAsVT20N4DzCul13RsnLmi6Q0dZZtNr4378VNTQVVXQ==
X-Received: by 2002:a17:906:3750:b0:a23:71ca:2bb4 with SMTP id e16-20020a170906375000b00a2371ca2bb4mr2367128ejc.144.1705312331209;
        Mon, 15 Jan 2024 01:52:11 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id st7-20020a170907c08700b00a2cfa8edbcesm3342141ejc.199.2024.01.15.01.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 01:52:10 -0800 (PST)
Date: Mon, 15 Jan 2024 11:52:09 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom: edp: Add support for DT phy mode
 configuration
Message-ID: <ZaUASV+0gc/Bufmw@linaro.org>
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
 <CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com>
 <6179e3c7-f399-4b0f-abb0-aaf5e549d8d9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6179e3c7-f399-4b0f-abb0-aaf5e549d8d9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_015216_591308_98641DA9 
X-CRM114-Status: GOOD (  29.91  )
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

On 24-01-03 14:42:49, Konrad Dybcio wrote:
> On 21.12.2023 17:27, Dmitry Baryshkov wrote:
> > On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
> >>
> >> Until now, all platform that supported both eDP and DP had different
> >> compatibles for each mode. Using different compatibles for basically
> >> the same IP block but for a different configuration is bad way all
> >> around. There is a new compute platform from Qualcomm that supports
> >> both eDP and DP with the same PHY. So instead of following the old
> >> method, we should allow the mode to be configured from devicetree.
> >>
> >> There has been an off-list discussion on what would be the right way
> >> to pass on the PHY mode information to the driver and it has been
> >> concluded that phy-cells is the way to go. This means that basically
> >> the controller will pass another value (that is, the PHY type) to
> >> its 'phys' DT property.
> >>
> >> For this, we need both the bindings value and the PHY mode value to be
> >> added as well.
> >>
> >> The controller part will follow shortly. But for now, lets see where
> >> this is going.
> >>
> >> There has been another attempt at this here:
> >> https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
> >>
> >> Compared to that version, this one uses the phy-cells method and drops
> >> the X1E80100 support. The X1E80100 support will be a separate patchset.
> > 
> > After several back and forth discussions, I think that this approach
> > is not correct and not that easy to extend. Instead I'd like to
> > suggest adding a property to the DP controller, which enables eDP
> > behaviour (and thus makes DP driver call phy_set_mode()). Something
> > like this:
> > dp: displayport-controller@ae0000 {
> >     compatible = "qcom,sm8000-dp";
> >     /* reg, interrupts, etc */
> >    edp-interface;
> >    /* or simpler */
> >    is-edp;
> > };
> > 
> > What do you think?
> 
> Please excuse my alzheimer, but why did we not go with phy-type after
> the last discussion?

phy-type would be a property of the phy. That way we would need pass
the mode to the controller. So it was concluded that passing that
information from the controller via phy_set_mode is more straightforward.

> 
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
