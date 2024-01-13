Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C61C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 14:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNFoXc/FOgjCn4sBZVJb57/SlAip11dlBy40EDxhNSQ=; b=tU7VtL1vjWAoyp
	6ERywI8ygppY4IZ7JoeKlDMm9EANewOWf22qe2M3XUWiu+gnv8QK6IcjjYHoQna0NWP8dd5dXOtfT
	sGiY9wgQ6cALrYj6Xl18/gc+OXt5CjrGHKY25QuMEGs4Z/fyybovC6eVM7QMWvRwiy2SnI5KzLa/e
	4KnnGuzvDdXpvYYpPGzna3/OBCPjIwOQMS+coTD7ssSqkPjNX2kV8vdKBf8qg2td0626/SMuB3Bsf
	SOGwk0Twp9EaHLU+yRtgJfNqQuDSGdXz0BJWeVtqMiFMjv0FuTF2m9Jyk9atv0taFF1P5SB2lwEde
	Dbtr+VoHMICbDm2Twvtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOeoG-005EEr-0q;
	Sat, 13 Jan 2024 14:16:28 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOeoA-005EDu-2b
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 14:16:26 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dbedb1ee3e4so6321264276.3
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 06:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705155378; x=1705760178; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1/tZMHFRvgZGdip0cvQrcsGGEtc7ulNA2Rsa3PQ+nsg=;
        b=rbKG8w7ndy9B8AR8m1au8ywgSoCrf8kq8R8PIln3Ps5Bm3Wfn4cUehPSagqgyo5lxH
         Akj5pNUA5ZUqLi3qNJLqNu3WgW/9aaZRKXUBYBAS3CUiG+Csl8CIdvfblmOoZyTkRsPB
         i4tOU7voMOI+OZhrxj9DxL+ug8dI3/M3g23xeM6gCbHEws+o7r9hETIyZ7M5kkPe2JOt
         zUX96MYT/kx2nCNm38IEcFaZmmhZR7BG6aJ3PDmAj+423X/H+AN2NwCniD/LX85I1fQa
         Qor//U99NSRMMGf6iSUZ5ECsMYbCdPlR2R5kxdnPU9cKiFxm0bezzY7fdMSqqXdIop8i
         IehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705155378; x=1705760178;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1/tZMHFRvgZGdip0cvQrcsGGEtc7ulNA2Rsa3PQ+nsg=;
        b=A2uoz71hbexr35kuEWpXxPDG1rLaFmoYsQ+FMx0pLwLjKpqrIUf9KfosQKQz2hf9Yo
         jOSmhaVPjF3EuIKaSWM/Ou5zqTUnRUiaXTQZ7MAkIhc0gLU9I7h1+j9xE/Y3pUYhc8Pv
         euQfxGI1jF6izmK3oaXK7Olzt/fe42wSBJ7S/4E4Pn7pv1Og9d6KyhO/hQ0pNspjZzWT
         MLV2BVh/DqCJkrBahLWoGK5bzzM55vgk/dmnQjtrXnCq9557dYjjtqJshft9FtLGJZx5
         DoUXwRhDqM/UIgpJfj4jtLlydpq8+AHcK9LBahfaMCWSChkHR+sd73X2ZQ1AQx7jg4cf
         Zviw==
X-Gm-Message-State: AOJu0YwgtCWgk8EO39/lGtkf5o+kf8hJn1POnMv5fsEygKrvBbtiu/1B
	vFKLrVpwQ3Mbr0NTGfUSTnef8Id4DOkKQMk2d/nq0h8uPizcaw==
X-Google-Smtp-Source: AGHT+IEoRuUcGJONarvwP7Q+HEhsqjkronLEa43W+AK3zy7ViEBV3phu7rdsnjoiEtXRYACJlZFwuhd4Pv2Z8sFEFSg=
X-Received: by 2002:a25:690e:0:b0:dbe:f0a6:cf8a with SMTP id
 e14-20020a25690e000000b00dbef0a6cf8amr1762684ybc.44.1705155377864; Sat, 13
 Jan 2024 06:16:17 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-9-de7dfd459353@linaro.org> <35f9ee57-3a4c-41d3-870a-f78c873afbad@linaro.org>
In-Reply-To: <35f9ee57-3a4c-41d3-870a-f78c873afbad@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 16:16:07 +0200
Message-ID: <CAA8EJpqDGgbbRe7J4+Cy3EkN49U7=my-EgAZBFZVatEbOtre2Q@mail.gmail.com>
Subject: Re: [PATCH 09/13] phy: qcom: qmp-usbc: drop single lane handling
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_061622_840098_7C573526 
X-CRM114-Status: UNSURE (   8.94  )
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

On Sat, 13 Jan 2024 at 12:46, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> > All USB-C PHYs use 2 lanes for the USB. Drop single lane handling in
> > this driver.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> Why is this not part of the introduction of that driver then?

Sure, let's squash it and perform other mentioned cleanups.

>
> Konrad



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
