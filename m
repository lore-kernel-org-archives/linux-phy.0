Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982DEC6379F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 09:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKS3C7M0EYQkz07gfQnUSsTz+tiKTX4A6YhKJZsGtUk=; b=SP1DHjWEcU3YmN
	//fNKY5O6e4dgUm8r8oS6+hCG3S6+Rf4j0wkqH0q18QKCe5pupgA6eZEIy1HLI8XimqCmjEN6VXn7
	1CKex19ztq+ZYe+PHYujEsr1b77Wqtgos7EQDi84WcmIxuB3M7ft2kCfrCmre+2mSL1ubRATGSzwS
	gtE5i/MTefa28FGbdT87cc06JVsnY2IuzlQtU4ZeTMJOPLcQgZd6v2DzDV6CXow3nshzxrZka6amg
	SkUTvI9QSd9yUR/avJeBc/8A8IHYxNKxgb68NEZCYYmGzzSFO1+LTGE72mrmnp86Xa+Q1MkBD2SxZ
	Oqj7PmWnmbfeNnQoWhgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHi7p-00DXuP-21; Tue, 17 Jan 2023 09:19:25 +0000
Received: from m-r1.th.seeweb.it ([2001:4b7a:2000:18::170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHi7l-00DXtU-8J
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 09:19:23 +0000
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 4C7A2200A9;
	Tue, 17 Jan 2023 10:19:14 +0100 (CET)
Date: Tue, 17 Jan 2023 10:19:12 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	Michael Srba <Michael.Srba@seznam.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init
 sequence"
Message-ID: <20230117091912.pzogxqvgf6kivi74@SoMainline.org>
Mail-Followup-To: Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	Michael Srba <Michael.Srba@seznam.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
 <Y8GY51Cfkj7o1MJs@matsya>
 <20230116203549.5jzd2olxua662n6w@SoMainline.org>
 <Y8YzzCEqGi3m9fWM@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8YzzCEqGi3m9fWM@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_011921_471303_F6C0A3C9 
X-CRM114-Status: UNSURE (   8.16  )
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

On 2023-01-17 11:06:12, Vinod Koul wrote:
<snip>
> > Thanks, it wasn't clear to me whether to suffix the title when already
> > included in the Revert: "phy: qualcomm: ..." title :)
> 
> A revert patch is a patch as well so the patch rules apply there as well,
> so should say "subsystem tag: other tags: Revert foo..."

Ack, but then /keep/ "subsystem tag: other tags:" /within/ the Revert
string, so "phy: qualcomm: Revert "phy: qualcomm: ...""?

- Marijn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
