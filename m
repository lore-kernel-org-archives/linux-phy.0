Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D13C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kFTr/19jjq3V82AXV6Bd5/zzWEUz0deyG3KCU9SGH8=; b=jHtpVEUmljiG5R
	3hQdDui7JRtMAJMUocZHDm36KIcG7FETbyJznPzZ3vKmEBQTiHa+L5Mue+pmyAFKWqg54oxvKDmrj
	lkE5vPsu+Ta4ennk5nnKAZLe72SjBMcNd7ue3s3JyOhacB1HzjHljE8nlo3GXVQAvYa0UdNv47hqr
	5kQbz71N8oUkf//bZHmkahgeq1+QWBlz5zkiM3nHnqdatQaehk/ARSSq/UquNZ1FawVhFzWY+Lvom
	P7blpwNi04ldxrG72OX8dd2bUR0RDbYHmsaZ67bhMAGHB5s/DF89qnBR3q0c6X/CwK+U0iUl4SVGn
	1kJ8GRSSziiD8oIlq8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7mk-00CSeF-Cg; Tue, 13 Sep 2022 15:25:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7c8-00CHlW-J6
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 15:14:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1A400B80F02;
	Tue, 13 Sep 2022 15:14:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 455FAC433D6;
	Tue, 13 Sep 2022 15:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663082053;
	bh=psJfDRHpoMuZdeioB0y5ST0RSTAXOKEZZykJ7BXBqD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WqJjEdvmLxIEnHSzgulW/soDVczfpbdOoMtXBdi+1HgTgM8cExb9GF1Rz0O3tIHym
	 ATRnXvnTY9j3Ld4XSaXe47PKtErAxaDHmX++KjTJ+yEj7oNJY2pjBiWr2koO/2m8vo
	 cbnp0kPZT3M2m/mvkShtVyu/45Qgn7036csi6/j/9ODYT6e97NIzJnz8PG5+YC62WF
	 hhO0i0/2moQ4+uDk7wTpssjlsgzYagfHF85uu12Kys0AYHDUZ6kc0wK5QyZqp1AybH
	 EN/qDnv2+bw4nKZ5b/FqYvZ029jfpyBdKhE6Uv4t5E4wD73R7mBMm2iuyS11kRwIzi
	 7uT9y3cajd3OA==
Date: Tue, 13 Sep 2022 20:44:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Doug Anderson <dianders@chromium.org>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
	quic_vpulyala@quicinc.com
Subject: Re: [PATCH v13 0/3] Add QCOM SNPS PHY overriding params support
Message-ID: <YyCeQUfsVfpI1Z+k@matsya>
References: <1662480933-12326-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662480933-12326-1-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_081416_849578_C23C39C8 
X-CRM114-Status: UNSURE (   8.08  )
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

On 06-09-22, 21:45, Krishna Kurapati wrote:
> Added support for overriding tuning parameters in QCOM SNPS PHY
> from device tree. This parameter tuning is required to tune the
> hs signal on dp/dm lines for electrical compliance to be successful.

Applied 1-2 to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
