Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF84C10DC3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 09:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dA/wURUVCYpI9fPAgHp1dNv6w/wmvEAnA6azNJXBYm0=; b=s7fHNhgXJNAOQ0
	c4ZH4eyTDlSGD3lvlkTN5oKbsmioKwGR7fbwnwcD5ou4vOJq2Jz26C/K0lhXz1JAA7xtTNaHWOJtm
	fbFVbi6KvGu+Hxx/Ad8kDCPrK7QC1GYo7pM6PG6V57pe96ZNmLIC8mkYzKrYRUVmi1Z0WI49JbEyv
	Ohuhv4Q5viKxAY6+w4Kw4PY7C2GgTJlyU6feHuqKMTMYNi5MOG6X/gYeZS9I+jGi+x93BcGC6YW+q
	QxvMF9ReRfEtUmH8ywNW6iH+p7AMu/5kXq04waeqwbzOzB8EnHwsS56Vc6uTc0VqJxGJDMO/K6p2K
	F0fwWDqk3oQxXCW6qj9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBB1Z-00CPCX-0l;
	Thu, 07 Dec 2023 09:50:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBB1X-00CPAL-0Q
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 09:50:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B466BB82564;
	Thu,  7 Dec 2023 09:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D5B0C433CB;
	Thu,  7 Dec 2023 09:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701942621;
	bh=YzfxSDFRzoSe+GPPF5UuUyQYbQJvr9Enxd0o7o5jPHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MHXPpKQXNg1pjrxlf+/vHYiq9+FKp+oLoG9ASwloceCLg8aaYwtTfaAwvxhn4XvS1
	 DDLjyxmy6a7zqgWmqaqwBIMNlH4Z0lyJ9e19DBmJLP9KTjs/7bIHknLni1a2EWehPK
	 /D/EXii6OkGi6Y+6YLz3Fp7eYYw2AoHHAwyEv4GCpmENzrAuWGmrGaLXeyxsTGNoim
	 ly3l4lZOdcwtem6tDSDM36aw6K6rsY7UaIMvgPSJgEDfebhwrO22E2eWEE1mXj7Pb3
	 jFXIHA6NuKLi/s/nGnz+sloz2UT8/kceEzhR4E+nk+lK/lAERZqbxiFD+J/Y3gBBOt
	 t2lxQPYABvoTg==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rBB2D-0008FF-0j;
	Thu, 07 Dec 2023 10:51:09 +0100
Date: Thu, 7 Dec 2023 10:51:09 +0100
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
References: <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <20231206131009.GD12802@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206131009.GD12802@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_015027_321147_4857EE19 
X-CRM114-Status: UNSURE (   7.69  )
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

On Wed, Dec 06, 2023 at 06:40:09PM +0530, Manivannan Sadhasivam wrote:

> OK. How about, "qcom,broken-refclk"? This reflects the fact that the default
> refclk operation is broken on this platform, so the OS should be prepared for
> it (by keeping it always on).

Shouldn't that be

	qcom,broken-clkreq

since its the CLKREQ# signal used to request REFCLK that is broken, not
the REFCLK itself?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
