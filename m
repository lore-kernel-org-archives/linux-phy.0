Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D1FCC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:07:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 018186113C
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:07:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 018186113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPXCXF2hCGioNWKYt5wKRUp2BOVgKzymtjKZFqBnn6E=; b=onhgz0gOGq6Tqn
	6QVFeuUkMriuwkMyPY9T6Ii3t8Dva9zMAcuN59ztTfrw6j4vEotYBtTy6+8KlGSodMKzYao4P1kPm
	5xw5JHwSREi49R8hjZECM8EeGgiH+Iyre90pS52VqdRXTbEJTsbhzEzs+Xt3Dlvpw3c1jonSeg+6G
	b4SL8sKDlZAg1hXH13RUCTRzCIdqR819/dqbBNLDFrhiE6qRyE03pMBsLU0H/KFBLo6BU6PsikY+v
	6agmoKIJANwQGPqNhnz4IVkB8V1QsPe61ER5Puu+IxaKT9YKlnOiPizvQd93Vmvu4ZmdC4s2lSOLb
	3T8OZ65GYdJ0tZ/JunAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBydY-00CQzW-EN; Fri, 06 Aug 2021 12:07:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBydV-00CQyE-Ok
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:07:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FA2D60EBC;
 Fri,  6 Aug 2021 12:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628251657;
 bh=trJ9Z3faJZBdsB26UbkrL7NjdFaz2Lf/2t4wxXkRJC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rZJkg34J24lKWwl6HiikaEtJHyTbnH6qgvZwwm7RSz/T9rdlyjmWVeXQtRrIsXnVx
 uE3MepPnKIZJMZz5pKqtJ0p4H15KH8WkC3vTr6zJJMX6nw3Z/RoI8Z6gpThTnuwwMV
 9rnwU6ezY2yT4qs41u7GBActmFu3QiZ8WC9Cl+b5culhJswy5MTWCuK+/zR1ko14Ep
 hb1QqAWoz8w44LDCFtQU/R+dMa73he5OPY4dv88nFP3BhYIrJSFD7AesE4huP5ofCW
 jPig6Q1jgIbKuIE8enAGygILg+E/8cp6StSb1zMCHa3NZlExdPbgz9KgkhzIhuDgob
 I8m9acKqQVkIg==
Date: Fri, 6 Aug 2021 17:37:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-usb3-dp: Add support for
 sc8180x
Message-ID: <YQ0mBRBgjT6pE/HM@matsya>
References: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_050737_864401_F01FBEE5 
X-CRM114-Status: UNSURE (   5.44  )
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

On 21-07-21, 15:56, Bjorn Andersson wrote:
> The SC8180x has two instances of the QMP USB/DP combo PHYs, add a
> compatible for these.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
