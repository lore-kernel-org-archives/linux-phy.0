Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80B8C433E0
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:27:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A71E64E99
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:27:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A71E64E99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GoAHVrcLxaSwJ3UXFfOxaaPvfO2g4nK9YNPFF6s3Tak=; b=Xp2BL1eRCkSWbMxP0cjZ3THad
	7xUtEfwDSvr30C7i5k+u+6APQ1qhJY3rtAniV+WK2AAmDSV0Vr7UhF4mj0LweBh8/Ir/fD4h3hKaJ
	OfrBacvIVcg4WTUqVQy/8HoDktk3gqvxnZq/3xKriOoFL4I4QBKetU7teA878XGXd1MDIt6MngnYn
	ShfEigC1EsGjuQYDWqM4qAcGkNQiECymZbgnbFrVcYANpV8nEhnQkwqnQpoR0EbtBvPyKeByq1VG5
	3xKa59tf14XUeFhbkKrvCd8W9qkirfvxdQsp5DNhb+jAN+6bNWcnL1Cx4tiEXBJEP0WKzPPXJelLL
	mSMDLsMzA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkRi-00FWSc-80; Mon, 15 Mar 2021 10:27:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkRU-00FWRf-Qv
 for linux-phy@lists.infradead.org; Mon, 15 Mar 2021 10:27:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 725CA64E0F;
 Mon, 15 Mar 2021 10:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615804039;
 bh=AGwamD92u5AG9ynbGg86ThSmL6JsKPrR25OjmZjqN/A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sPq4qge3eoNxFFbYzw2zwdMkpY0+38CyOVqwY20gs7l3aMMi2aVu/wvdkTOcpFiZI
 GEY1Xv2TvR5EtmzUB+mZivU640D3VBwD932VP59u1eQbsxP+ljiKQji7JJJ9dd/cGm
 FGo8wHVxapOXjlLLGmR61BP1H7P4j7y7sASEAbYxzHyfOgQCmOP4nsILzmLeBNizMn
 boUWWiJ3Thedjq54PSg4t21QAPzoZg5LspnTrGgdQuImuoiRSb+hQ9RMeoej2gXK6p
 fugjLIltFvyLqb9sG97jY53C06jsONfyfKku8BftC+Cx0RAYgB9efGaPz28T28PxDK
 KFj9y9a9SYKDA==
Date: Mon, 15 Mar 2021 15:57:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH RESEND][next] phy: qcom-usb-hs: Fix fall-through warnings
 for Clang
Message-ID: <YE82g5+07IOwRDzl@vkoul-mobl>
References: <20210305100219.GA142595@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305100219.GA142595@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_102724_966333_87C643A2 
X-CRM114-Status: UNSURE (   4.77  )
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

On 05-03-21, 04:02, Gustavo A. R. Silva wrote:
> In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
> by explicitly adding a break statement instead of letting the code fall
> through to the next case.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
