Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBBBCC25B78
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 12:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ybz1O5wv4XOGMJvxfUxIXk2Bjk1p3DZFcW+44J6pj4=; b=t0PAEfERKDUbuV
	jQHpoB/hwFwycfJpjZR7jQ+kLSjS305lzx4PW4oE+8OqRpAhdBivem7oPpHDCyhF85M1cGj8A11dw
	lN2JN19baEWO7XLaAKcSFqHhL4ARgVJqGvf636ajP1zr5nCfHirfGfxMZlghUu8tDQkq+yuJ5/76k
	b098l4ZHPml0ODxN47S4BqmJi+cgpPpH8eglOp5mNrkaK1cc75a8DDp6Xdqgmm/yB2nkWGmPg2dOJ
	46YkRF+G25sSz6vQYLmHKkx/SLWKKmJa7jNmULSz0mDDIVzVw7zxvh+LbJ6I4mCkM2lrLHfPbyLVA
	8LYfNy3/K7P5mfwx8vYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sETEq-00000002GaM-1V1b;
	Tue, 04 Jun 2024 12:26:04 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sETEl-00000002GZG-2juj
	for linux-phy@lists.infradead.org;
	Tue, 04 Jun 2024 12:26:01 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-572c65cea55so9679030a12.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Jun 2024 05:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717503955; x=1718108755; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9gS0OyJH72V5TfYu3VmbBAJJsXIwwQ21Ck30Dm2cAY=;
        b=f7PiQr9Z79ULQiwbisS+JGXShuO4KXO0ARZxEnKwn+JWZVB4+oXSCaU6s7ZT0GJpGe
         0EwQuYusjSWCsMLCKpqPZbKlr1Ibu30eFo0maQ7s+35WkSMZ5ubAm4diP9tJ4dHT/RqH
         LhELwY+udrF7DcH7UoYD7JUvRM9peSm/2RvTdW561pn+BursOdvqBr5wg3Xw9vpRi4e4
         SVOF2IgNwZf1ZzA+BYXmbiW9AmF4SvIpjhS6Y0fWhonyuGZa3XQiWU45gNz/DNUutMN9
         +hje6eLa4gvRYS412G+9UMMiPsk2XePkDStBZDPOk6O/aMDYNekhD4cVmfVfFhnkh6oC
         pODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717503955; x=1718108755;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9gS0OyJH72V5TfYu3VmbBAJJsXIwwQ21Ck30Dm2cAY=;
        b=eB1o1Jv32xQqE4EdHrsXwpXBCVrr2L/V6KQb68OGXEXQ0S3da9hOdHfwMo9GHxk7zU
         2R9KTlpjfBoniOUHOGz1U0b+76QDaUGhQymckNAfPCo4yusOh8qo1QscPaQq8wZw3Ksp
         XAKaRB6VxySfak7h4vk0Rb4tdpx0jUH1vBBJ8w1/TZKxOW4h0+ZL2SmHt8oMAaT1SV3E
         fPYohFCBPxcYLAtMIG+ItAEbZdfsNgpvB5wT1fMBpc+Jv4SzZ6q9E+leYGJjrRdAa/rf
         Cq2+jVKIn7sLwfS/Rw+3DCxmCtdm5vEYqDBIHyd+30YLuD1k8nFLv3KpnF8waak5KHdj
         BdvA==
X-Forwarded-Encrypted: i=1; AJvYcCVSQAzR8OP7wIRJmcpwQhCnjsxaYzsVhqruXhJITUmITFh7KvVDhxbV+7BWC9+VRNUgHgvYxfXO1VLKOl8cRedNFjfDfQeyrbiRdTaHZg==
X-Gm-Message-State: AOJu0YwBGXRMM/fY2ByW0OXDPPw9N/kFuZNS9Fv54H8yHQjn65za9cdC
	X9d6OcO3bFhoJmYmrYTrSrURXgTSOx09gtwyFFB6ghULdXhL2YS8Uj+kwVrnaxs=
X-Google-Smtp-Source: AGHT+IEN9f8uev3FXprfAoYc9A1GaTXa2CrF6gqcTsV0n51gFLuo0b534nnOFA35YyhTJtD3rOTrFw==
X-Received: by 2002:a50:aadc:0:b0:578:5f53:f017 with SMTP id 4fb4d7f45d1cf-57a7a6bb3ddmr2057448a12.6.1717503954639;
        Tue, 04 Jun 2024 05:25:54 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31bb825esm7298469a12.32.2024.06.04.05.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:25:54 -0700 (PDT)
Date: Tue, 4 Jun 2024 15:25:52 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Message-ID: <Zl8H0KOrfuF91kpZ@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
 <Zl27FJVU_YHokCiD@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zl27FJVU_YHokCiD@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_052559_876193_F1CE4A6C 
X-CRM114-Status: GOOD (  17.39  )
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

On 24-06-03 14:46:12, Johan Hovold wrote:
> On Fri, May 31, 2024 at 07:06:45PM +0300, Abel Vesa wrote:
> > The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> > 2-lane mode. Add the configuration and compatible for the 4-lane mode.
> 
> Same language nits as for patch 1/1.
> 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> I tried this patch along with the DT changes and the link on the CRD
> still comes up as 2-lane:
> 
> 	qcom-pcie 1bf8000.pci: PCIe Gen.4 x2 link up
> 
> so something appears to be wrong here. (I noticed the same with your
> next branch last week.)
> 
> How did you test this? Does the link actually come up as 4-lane for you?

This is the PHY part. The controller needs some changes as well.

Yes, as of yet, I'm not able to bring the link up in 4-lanes mode.
This however doesn't mean the PHY sequence is incorrect.

But, I agree, maybe I should hold on to the PHY changes as well until
we get the controller side working as well.

Thanks for reviewing.

> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
