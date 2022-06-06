Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C47BBC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 13:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpN3F+Ohw9JzXxXrPNsNpBb+QeVOla+kDOU04dGph2E=; b=fhbBiWWqMpCeeW
	PYSPqwcoVt9jkVrceVcyDuaphrXZmyGlkeI1qsOgw6Gdv8Qx69YD+zOvGvWFem34LHeI4N088hFSa
	DXeRJ1ug0O0OTvR0WaykDQf9+LMeLHFO1Aawlw5mPjUTR6UfgRUUGksqpICK5mpdtCSsl1wiPblF3
	jiLjpHOPu32EYY/Uv9PjQCq5wU0BvDG9zesgZKDAZ+xg0PfFycDFPpxjGQvn/1PX+H4og9nyXelMx
	ED0pWBqxM53YDqXSLgeMW6ua4ds8OhL+DbumwZkzYwf/B36Qg5eK3USqvdhMqc8Se1iggMFIFj0GV
	cp4WJXcCraLmzMcYQHxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyD9F-001Pv5-5i; Mon, 06 Jun 2022 13:52:01 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyD9C-001PuC-CN
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 13:51:59 +0000
Received: by mail-ot1-x32d.google.com with SMTP id f9-20020a9d2c09000000b0060bf1fa91f4so3586157otb.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 06:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=APhT/i13/d2E2pyeF6wRIrnq7vHDbvBVvFgrsc5P60A=;
        b=SjiXmoRMwENXFqucwGZA2phOPlKg22GjzUGv7SRumNIIskOY//r0VzeohvwPO0mNQ5
         t33XgezWAYqHDNoJSQCP6tHvRzVVzYuLfzPEuBSBhrirX4eQ8osB3MkUwSbadLsiPazH
         iPNNW9VfgiQ6r/nVgMp5frKsx8L3ffuV7Y9BXQvZMJn03tCtKyGgOBKaswkEdFAROPQG
         taQv8wqd93GGRPWEoJT46Id/+jxSLfWIbVYlCmjm3iWb/20Xp/7n8zH20H5mXz1UJi3z
         lV/ZhN8Cgg/MT4WtwUWHc+5qmYQco9jhDOGdtpW5s12E8aWOeNPakavcBJXkQ/OPsBb8
         ZWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=APhT/i13/d2E2pyeF6wRIrnq7vHDbvBVvFgrsc5P60A=;
        b=pMGm4wtQaeYW9QVLe3hA9IsjZWHIztFL8f1C8VLJB/nSgbnVWDzeS+JxFYlspbqk4d
         So1nQEJuSBmYcCDpCDm2sPiodq0g89Pscq2oRjlqgAGoo4Sg45Y4hsZ4Si0xV4LMkXJo
         CbDPSe2/QFphplMqLxB9eer5SC8WhG7WJdS66DENTuzJoZxupCJYeLNbzxnDovPvwtbm
         Qkm9A4D+BfurvCqdPWRO7lBPNEs2yiXUPhz7iDRH9E2QgV3s3LOpuubwa504zqTjuQ0x
         pQG4MzdqP5D6W4em98sGi4C1RCYuILb454mH3W+Z3ySMzm8IRHPKGGuwTs78UZvwL4Cp
         8FkQ==
X-Gm-Message-State: AOAM5307eo0Vp31Zr1TOCrfGm7qtggTpyN5h5rj6BX74DWRp1p9Sc3w1
	mVI6dxIDa9YGyESoyTSivvTlEQ==
X-Google-Smtp-Source: ABdhPJybm2N3qf8bwApBV2m3nAUeVpFq6B01YXCvkRwanrQ4T6dQmNb+nvUPSPkYRk8iUOAh1/fylg==
X-Received: by 2002:a05:6830:2807:b0:60b:e6b8:d804 with SMTP id w7-20020a056830280700b0060be6b8d804mr5419300otu.138.1654523515103;
        Mon, 06 Jun 2022 06:51:55 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id e28-20020a544f1c000000b0032c18f04800sm8491038oiy.1.2022.06.06.06.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 06:51:54 -0700 (PDT)
Date: Mon, 6 Jun 2022 06:54:20 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v3 02/30] phy: qcom-qmp-combo: drop all non-combo
 compatibles support
Message-ID: <Yp4HDG4Bus1FOHId@ripper>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
 <20220602070909.1666068-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220602070909.1666068-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_065158_459898_2FD1F953 
X-CRM114-Status: UNSURE (   8.28  )
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

On Thu 02 Jun 00:08 PDT 2022, Dmitry Baryshkov wrote:
> -static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
[..]
> -	}, {
> -		.compatible = "qcom,sdm845-qmp-usb3-phy",

We have a few examples of these, where we have a compatible for the
USB-half of the combo PHY. For backwards compatibility I think we would
want to retain these, but if we move them to the UNI phy driver wouldn't
we end up with duplicate USB configuration tables between the two files?

Should we keep the combo instances here as well?

Regards,
Bjorn

> -		.data = &qmp_v3_usb3phy_cfg,
> -	}, {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
