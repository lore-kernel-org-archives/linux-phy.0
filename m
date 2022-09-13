Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A4FC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icb+hGpphM7XKnzHuAgpH64Tb5W/LICfSQKAHcuGgA0=; b=gkiXWRy+BGOu+I
	/GmOv2R/mGcOWkAMwJGcS6Am6YACSpngSxto3ljw4/OrXzDvm5V/zfhE4lXj5JjY3i77NgoHY7b2B
	9ZRoWtElymyo2fAjz/YN2wlxsXTKHDmXTbxGKdvupLv0SL4MW/Xl7aPN06K9aRJiV0XsiIvllac/2
	rPFhteWXlmmN5lnLPwYLNrrSesjFr21Y4bXUDDm/HCOv/8bKY/k78mZZwf2M/OioT1EZ5IK0zN8q5
	ZlKmfUACm8TUvmNHiBh7FAZEKa3x8E2P1qhMRw8BuM8AHWiK38POi4RXYysBigokXLUOaHC352SXR
	UlvvgTfc6K1QGTuab3CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7b3-00CGrP-MA; Tue, 13 Sep 2022 15:13:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7IV-00ByWk-9l
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 14:54:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 96F19B80F02;
	Tue, 13 Sep 2022 14:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D273C433C1;
	Tue, 13 Sep 2022 14:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663080836;
	bh=zd5RQfhiDzh7kjG/uuLjr8XNlVS9sWYPTYLzY0MfS/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i7DTEmcNaDYGVj42mt6D4YfGWi4pd2+N8SKaiXzmSjR7q9ST9O2qQKeS4chgEwqCc
	 yIMBN044B1rTe0MiLz+c5/JCja0AqNFZ7iWAYA1JfOeKPpQt71Uk4dFWZlbdwe7Kn6
	 sGdh7EDxAn3XQ+d2pMMl4Su4B+/iali245EfdOhJcAsWxavptAr/lxzQaOim03BZ3g
	 Un7E9ly9Ndiao3f9tTQ62VPlwvAJC/ZZZlhuA4SssVCmSKZ1oWwZaboGZG6qh3YGHo
	 9MUmHzvkstTYj/ehITJN6Pxl84xhK2lBbQozXnt4MjjrW2WQdBXL2j/mlQn/GKO6A+
	 exUSLn3XSWlFQ==
Date: Tue, 13 Sep 2022 20:23:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom-qmp-pcie: shorten function prefixes
Message-ID: <YyCZgHx66V3rhv7u@matsya>
References: <20220906074550.4383-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906074550.4383-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_075403_779477_CB7434C6 
X-CRM114-Status: UNSURE (   9.68  )
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

On 06-09-22, 09:45, Johan Hovold wrote:
> The QMP PHY driver function prefixes have become unnecessarily long
> (e.g. after the recent driver split) and hurt readability.
> 
> This series shortens the "qcom_qmp_phy_pcie" prefix to "qmp_pcie" (QMP
> likely stands for "Qualcomm Multi PHY" or similar anyway) and clean up
> the code somewhat.

Applied, thanks

> 
> Once merged I can do the same conversion of the other four QMP drivers.

Patches welcome!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
