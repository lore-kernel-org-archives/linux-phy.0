Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5D2C79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 16:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aezIbzpPPGp91slgh9Absik67CiIUoj2qNkO1RMKNAQ=; b=P0eQsPgPJh/eEH
	eUgr7IFmwP8mZv4wlJjwhSkaFU4V9a/s8SrPgFRjj+kc0lsXTGAMBrCC23Vo4hktCgOvp67X1Z+j8
	DsV5ei/d3Er91PjvowbE4EC5NjZ0syc2IUFMrZBbYoAX74I2T+TOQ+Rh7a4KkkOm6i/L48iZ3fSx0
	lvvlRmPyjRDL3D67UQQzAFz8lzHkjJ9KNyXxzFK4UIph8GjxyTDSOPlFGW3iYDBJBVh9WcVM0iL9I
	WTrEd5oHFBT/n70xcWngyMGDuTQKc6rbE1hFx2RsbUkzC1PNWEeg9IFYyywiAyNxQV6rZsiP8EbSO
	UU9TtbOEWwcENUg7ZZmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3cBE-00000007IDN-1NoY;
	Mon, 07 Sep 2026 16:26:48 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3cBC-00000007ICz-2H1c
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 16:26:47 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-5303932c4f3so17529751cf.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 09:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788798405; x=1789403205; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eG1iIP7BUpIbVGRt0MVKY4QsHwvAe8uDPE10PvagRoM=;
        b=axp3xJrDD10rTCvsKUnQAf1fPFq6ktKpATIfXOPkEuRFkGMYr9XcFHgbSjuJfJqK5R
         CofL74BbyvOQiC6LqIVSqH7KGMvx06VTkDfLzRIjMhdkCGamTQI+ZhKMa68wxd+5aPZ0
         dRq34PX8XtUQhKhlC7/UTQQ9jzVKW1yHwzVWSYN4SBer6rA/Z6pUnQV46/nc5wNr1sn9
         XN7qnopiX990IMF8aht3wpZ6NZhfQd7xzazFJNYK0G0NpTq0zt6UPieM/hoGK/0BhCEc
         LBJ3bzhJcGHiOuXB9DVFx4O7xVXHnNocA6DBznLioUZB+q/aJmugVhh4rcdSdFtCi33I
         oZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788798405; x=1789403205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eG1iIP7BUpIbVGRt0MVKY4QsHwvAe8uDPE10PvagRoM=;
        b=KRYMuzhMV1czZ2Hbhk1JIA8a3TtzsUpJn9WeIyxYhosJSAaR2UEwA5tHRV66K3IWdN
         d1OsAgjiU+C8TvO4XdfnUgzQSof1kgWZRAYiV05N7bF1+0mL3UytsyrAi4LTKjLym9Rv
         s6wkyT+RCtBs0CxGDhmA0KZ1/8f6F9lCqkd5ahW5gJ5EibaqMEEbjeWp5vy3sJgo9XPj
         ItzexvdcVlO0JBx+6nY8HtT+bHGxy8Nj/GVhFTwxKvyf7ESEwKIRCSTpcw9EClRRWXde
         wvfTxUCHVV9h5012KPh6f35/n7FfjCQ757lqIXG8Ryazl6hkuX5xrngwiQMair/Reojh
         Vb1g==
X-Forwarded-Encrypted: i=1; AKwUvBwjXQjWHNw0E0kG92AeK0E5P15rDadp8/vPzUR+no0Agh5RNmJNpJc4NerlaeAvSn1fcj40AeDUPN4=@lists.infradead.org
X-Gm-Message-State: AFuF++nOGshsg5FzzcMJSoOh58gicDfIUXqfmfy3VWnIYklmq5NDAyir
	kjp8ivhVsca9G/x14kmg5pxuyfjqznYCfWCapyZNQakFrzGM8138tOmh
X-Gm-Gg: AYBFou1y7Doktr9d/dfJLPTCT5S6BZYMLPYPeO9YdCBR+qr3SRU66wryaWkjmE2KS6Q
	8aeKiMsykrndHT8NN7baklGxatLjye7Gou2XBMsHnd3KP0xg/BPgFHny/9kV6Wp1fTn8eCPGXmu
	7FdxorrdZoaJz0BEp2in20ICwVTtCVudbNSJhZu8O+onpK+l2/w1M4kTEd+ubRnmNlQ7poGHtaV
	fQp3MhKEtM8BbslD1BHyBfMKntLpGhMKP45R5hJKdIWZ2brwWoS3eJWd9/SsDCA92eDrfhWn/Lh
	TkOsagafuip2q8da3jboqKNoF4zEbnGTyZYr/3Cun0XAzdCrSKumAGAUYcYUSaUyT0ZY5Gtn81R
	BUvvJ64PGMZUhAs9O0r/mUE85PDK9PrpSlQ5yc1lPUo3LLHRhUSs/ZIP8G25z0YXjsKAO7MY5/b
	KlCxdbC7rzbjtUAHaEN7YvG+G/hzG++4HnraA1fMm7f++oewGaaoLFrBMCZqK9VijmlVGdheUeY
	qO7zQ==
X-Received: by 2002:a05:622a:e113:10b0:530:6f9f:d4b9 with SMTP id d75a77b69052e-5306f9fe2fbmr98949141cf.20.1788798404930;
        Mon, 07 Sep 2026 09:26:44 -0700 (PDT)
Received: from localhost ([35.11.35.209])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-53087363c46sm24743601cf.18.2026.09.07.09.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 09:26:44 -0700 (PDT)
From: BurningHoryd <sjunhyuk1@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: Re: SM8250 USB-C DP alt mode: DP AUX times out in reversed (CC2) cable orientation
Date: Mon,  7 Sep 2026 12:26:43 -0400
Message-ID: <20260907162643.36585-1-sjunhyuk1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <f0fc4211-2040-4115-9847-6e5cc3fe8161@linaro.org>
References: <20260906225206.2994952-1-sjunhyuk1@gmail.com> <f0fc4211-2040-4115-9847-6e5cc3fe8161@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_092646_588581_E2C6460F 
X-CRM114-Status: GOOD (  15.12  )
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

On 9/7/26 08:40, Neil Armstrong wrote:
> This means the nb7vpq904m is _not_ responsible for the AUX swapping, other
> boards have the wcd9395 or the fsa4480 in the middle to use the AUX line
> for the USB-C Alternate Audio support, and does the swap.
>
> Could you check in the vendor tree if there's any reference to those ?

Checked Retroid's downstream Android DT for this board. There is an
FSA4480, plus a GPIO AUX switch, and my mainline port models neither.

1. fsa4480@43, on the same I2C controller as the redriver:

     i2c@884000 {
         fsa4480@43 {
             compatible = "qcom,fsa4480-i2c";
             reg = <0x43>;
         };
         redriver@1c {                 /* nb7vpq904m equivalent */
             compatible = "onnn,redriver";
             status = "disabled";
         };
     };

   The only node that references it is the ASoC machine driver
   (qcom,kona-asoc-snd, via "fsa4480-i2c-handle") - so downstream it is
   used for the USB-C analog-audio / MBHC SBU routing, not by the DP
   driver. The codec is a wcd9385, no USBSS block, so no wcd9395 here.

2. The downstream DP driver does its own AUX orientation over GPIO:

     &dp_display {
         qcom,dp-gpio-aux-switch;
         qcom,aux-sel-gpio    = <&tlmm 8  0>;
         qcom,aux-en-gpio     = <&tlmm 9  0>;
         qcom,usbplug-cc-gpio = <&tlmm 65 0>;
     };

   TLMM 9 there is the same pin my mainline DT currently hands to the
   nb7vpq904m as "enable-gpios", so that assignment is likely wrong, and
   TLMM 8 (the orientation select) is not wired up in my port at all.

3. The redriver (onnn,redriver @ 0x1c, same I2C address as the
   nb7vpq904m on my board) is left status = "disabled" downstream.

So the SBU / DP-AUX orientation switch on this board looks like a
discrete GPIO-controlled analog mux (TLMM 8 select, TLMM 9 enable), and
my port is missing it - I modeled the I2C redriver as the
orientation-switch instead, which is why poking its AUX_CC_REG did
nothing and only the DP_CC2 (pair-swapping, 2-lane) op-mode ever got an
AUX transaction through in reverse.

Does this look like a job for gpio-sbu-mux
(drivers/usb/typec/mux/gpio-sbu-mux.c) - a node with
select-gpios = <&tlmm 8>, enable-gpios = <&tlmm 9>, orientation-switch +
mode-switch, wired to the connector - with the nb7vpq904m kept as
retimer-switch only (or dropped, since downstream disables it)? Or is
the FSA4480 in the DP AUX path as well, making fsa,fsa4480 the right
orientation-switch to add?

I'll wire up gpio-sbu-mux and come back with reverse/normal traces
unless that's the wrong direction.

Thanks,
BurningHoryd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
