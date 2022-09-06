Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06AC2C6FA86
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 02:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrf7E85jfKf4iotxhDxYDVi9aSprCF1GZBsunpVEXt4=; b=ajpC/4Ghq9nBgl
	8fTsrnq9E1cva4IA8g4XoCG/cL2o1Z8dXqra1GolBr5ylyHahYgDvYXKDnDxTwBdLWegu3Sf/HLzF
	qS2Frg3xye01op7ldonJB65cSUkUHowE0NNtK7S+WNwgmugATppJCfDz2PdqVYcMpp2B+AMCkhneb
	Md1+8hZ/SkX5n69se3VaZRklsGYzi9k8kjbzcyiW5j7EcJoTtB4W5+ecjzAOeqDkaQ/311L1joHIa
	+awMdrZVAdDrUKGZt5lDwEs8aZrZincD5lbUU/1udOUy8io3bLR2BSBr0JzczQK3pXKdFs4+IF4vg
	dRk/T6RclSOcW/6D5idA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVObG-0022So-6s; Tue, 06 Sep 2022 02:46:06 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVObB-0022Ik-Sg
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 02:46:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4E9FBB815A6;
	Tue,  6 Sep 2022 02:45:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A38D1C433C1;
	Tue,  6 Sep 2022 02:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662432356;
	bh=ghi35xw2bM6XkWJz3ZynG6KjYwLr/s0j/PUC4aSPkuk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u0AldxqpC/s55xjzxvow+esfaO81KuYY/Pe/L2weWaNUAw60JFMc3Mm4lN089wi2q
	 GjUvnnrjep+H2LR45evWWPOHTQKYljaJeXO0cK5XYGyEdI1QBk3C0j285hgCevlZsw
	 5xHAyGem+wH5XVprGgxNF5zj48OsLf9jkgrKXwn0W4PUZdR9hoI69QtPwiS96oZY2x
	 K53eMd3sVAdxCfLDumAj3xBk96FLNHlejrs8TOCQ6mMKtKMyy4of2IykxZzlr0/n6x
	 wcmXyhoAeEyy8U5vhKjGGweU9sxccbuWk9R9doyWEbSQtIuL6XoKNQd+mOfFptNZco
	 DRBAvz4xHlvWw==
Date: Mon, 5 Sep 2022 21:45:52 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
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
Subject: Re: [PATCH v12 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Message-ID: <20220906024552.lob5k4q3iyagyo5e@baldur>
References: <1662201048-26049-1-git-send-email-quic_kriskura@quicinc.com>
 <1662201048-26049-3-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662201048-26049-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_194602_147812_8C915161 
X-CRM114-Status: GOOD (  10.58  )
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

On Sat, Sep 03, 2022 at 04:00:47PM +0530, Krishna Kurapati wrote:
[..]
> +static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
> +{
> +	struct device_node *node = dev->of_node;
> +	s32 val;
> +	int ret, i;
> +	struct qcom_snps_hsphy *hsphy;
> +	const struct override_param_map *cfg = of_device_get_match_data(dev);

Given that you don't have any .data specified for the other compatibles
(which is fine), cfg would be NULL here and below loop would attempt to
access NULL[0].prop_name and crash.

Please add a check for !cfg and just return here.

With that I think the series looks good.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
