Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90845C19F2C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Aug 2022 15:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdeRpHfqMnSFeE7fqsZ8SZ5eXqzyRZv1IqrJF+skees=; b=qDP2RRAMH36rBp
	BhgeyIOFFbGmItcwE/mGtuenIvR6bSc1HpQdifsD4G27PYhahoR7TooEvIuPnMAjhKYqPFBtBwVaX
	IpiubIUEARSav74nJ3cNbOV9TexxODDuoCJVBORpITUctp8xL1TW8ZRZLN1uRLrPiclCcl3SVisf/
	hDDCDoWPASPct5GeCSgbpy/TM+KFpZfmhD6+NLeUVaxy4klR/wQmKEKnMMWgARtViETLIHIgsk50o
	ngLrFWeSWeVRbG8S+VR4DpU2RAeco+PeZnuEGnZUKOS0LDeo/TO3MPrqQXWnLrN0I6dBE4zhlh6T3
	wh9V8mJtokT2A3Ca3zag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJGKM-0078RT-VG; Wed, 03 Aug 2022 15:30:31 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJGKJ-0078Oy-26
	for linux-phy@lists.infradead.org; Wed, 03 Aug 2022 15:30:29 +0000
Received: by mail-ej1-x62e.google.com with SMTP id uj29so18979023ejc.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Aug 2022 08:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=QSNLoRq7qbNX21X/zV/2AlYjV7hEb4BXWVGqbeUJ24g=;
        b=nzI1RPneh/LJJCu1k6xuiZTtzaae82xzjDcJUWtbJsNeS7XJdegrZyHq7NHnqw/K3v
         z5eW0E4AYjhiQE3UwN3v0NPjuunZorY6mJSCV9HwvyMq3kEg6Oek6rOvDV1r5SPQL06U
         pPeZgIcmUj31NF0m2C/T7AnXuxaoNbub9usmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=QSNLoRq7qbNX21X/zV/2AlYjV7hEb4BXWVGqbeUJ24g=;
        b=Wjm6bKQ+do55xbN26OrUB4IoYG0rB3BTt6WykaEt0OOKdQMRRfeJYVX2HkdwngvSmC
         6cm0JvIwkVo322B+MqQz4GcYPKGKeBIRlqiLuOui6r3uSC3y4y4yexhpleW2wWoE4dO2
         g51K28ImquvEqee43DJm2ciyA+HVB9SeXa9CGHsg0iWd8VyO91WNsrcuCUbT5XPMgyF3
         F9K15dam4Vvzv/yYeps1hgA2mzudjEsMZnUnp1pDMXFmCSgbwHGnB4Dwg5y8iwwh3vpj
         wBm2dSzhelvsl4StQVtQ/BHy/dypmowoJHi+0WqNRa0QI25hUyf6qpxxnlGl7Q/pFZ9w
         +Ssg==
X-Gm-Message-State: ACgBeo218L03Djp2feReSvO5hxCBnK8OQP3zZHOYq2eFssRF4i1BV6de
	VjquljmNeUTFstIgAWaqLvIB8JqVjpDwGGdPadM=
X-Google-Smtp-Source: AA6agR7F9L/TAO/FaIHUpGwjRQsmy24EOSuj20dwbDv0N0F1iGNMjTtTiknh3N+4B4FUB8Ch3gaIWQ==
X-Received: by 2002:a17:906:9b14:b0:730:984e:a51c with SMTP id eo20-20020a1709069b1400b00730984ea51cmr8923434ejc.435.1659540624209;
        Wed, 03 Aug 2022 08:30:24 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id y8-20020aa7c248000000b0043c7efb8badsm9587952edo.61.2022.08.03.08.30.22
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 08:30:22 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id z16so21938767wrh.12
        for <linux-phy@lists.infradead.org>; Wed, 03 Aug 2022 08:30:22 -0700 (PDT)
X-Received: by 2002:a5d:5889:0:b0:21d:bccd:38e3 with SMTP id
 n9-20020a5d5889000000b0021dbccd38e3mr16118496wrf.659.1659540622383; Wed, 03
 Aug 2022 08:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220803123332.8138-1-johan+linaro@kernel.org>
In-Reply-To: <20220803123332.8138-1-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 3 Aug 2022 08:30:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VoFgMj9iOx1HR72AcnTi9OOSCOFm39kKOGXHkeb2SYBg@mail.gmail.com>
Message-ID: <CAD=FV=VoFgMj9iOx1HR72AcnTi9OOSCOFm39kKOGXHkeb2SYBg@mail.gmail.com>
Subject: Re: [PATCH 0/2] phy: qcom: drop regulator loads
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-phy@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_083027_622068_AD61699B 
X-CRM114-Status: GOOD (  23.76  )
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

Hi,

On Wed, Aug 3, 2022 at 5:34 AM Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Unless a driver implements an idle mode, there's generally no point in
> specifying an active-mode regulator load.
>
> Drop the regulator loads that were recently added to the Qualcomm QMP
> combo and edp PHY drivers.
>
> For a background discussion on this matter, see the following thread:
>
>         https://lore.kernel.org/r/YuPps+cvVAMugWmy@sirena.org.uk
>
> Johan
>
>
> Johan Hovold (2):
>   phy: qcom-qmp-combo: drop regulator loads
>   phy: qcom-edp: drop regulator loads
>
>  drivers/phy/qualcomm/phy-qcom-edp.c       | 12 -------
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++------------------
>  2 files changed, 9 insertions(+), 43 deletions(-)

It's really hard to evaluate this based on the information I have
available to me. :( I'm all for getting rid of all this complexity if
it was added for no reason and I could definitely believe that on most
boards there is no reason for it at all as talked about in other
threads.

I guess I worry that there is some use case where LPM mode is actually
usable to power these devices when they're active. It seems like
_maybe_ it could be but only if nothing else is pulling power from the
same LDO? Some LDOs on the board I have seem to be able to do LPM up
to 30 mA and some of the rails are being specified as ~22mA.

The problem with regulator loads is that using them is kinda an "all
or nothing". Either all the consumers need to specify something or
none of them can. :( This means that once the first user comes in and
is able to run the device in LPM (maybe only if they're the only
consumer?) that everything will break. I honestly have no idea if this
will ever happen, though... Mark said the phrase "actively managing
loads it's probably not doing anything useful" and I think "probably"
is an important word there. If that word was "never" then it would
definitely be OK to remove load management like this, but with
"probably" it becomes a lot harder.

If we needed a hack, I'd somewhat prefer a hack that just bumps the
"mA" value here up to something higher. That would force it to HPM...
...although maybe it still won't work? Then the regulator will still
go down to LPM for other consumers if the PHY ever turns off. In that
case I guess there's no getting around other consumers requesting the
load or finding some way to say that on your board this regulator can
only ever be in HPM mode.


-Doug

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
