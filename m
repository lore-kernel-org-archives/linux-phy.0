Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BC29C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 10:21:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBBCA60EBB
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 10:21:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DBBCA60EBB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/UYyo9qxqzhfB+I1RzLD80pyIc1cvHKrUqav9mP9HU=; b=fLoSt6gvnvgKn+
	C+SqRdEMm996DQH8V7TOZqR5GrXp1t6EV7m8RVetBVQ62h/SdF/AZ5TI19BjbEYpVmJC3rEmHDQva
	yuznE9DUtoBCzcpLprls9txH95pZK8J139FamKrPl/QwxT7Yv+938GeB0R3LkWdEFpV2GOD0+9Wj1
	sMAQYzS0haZGcTpkdkIGZPWlVslW3SrAJgETruJ0NuBRA8rTBAxFQXecbyvhHBlcnnkoxd2IRWbub
	RHwtu8u72xMOYHuOfbqY/OfzPE22pCeBF8crFR6O1ZTH8mWPY+2bXmu24KdRVFmJluZ+YAo+1dbWA
	7UlKVn+g7dzqv74nH+wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFfd-00HTy6-FF; Fri, 01 Oct 2021 10:21:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFfb-00HTxc-JA
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 10:21:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 50CB360EBB;
 Fri,  1 Oct 2021 10:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633083695;
 bh=d2B3aqMqCeg19jkk4r/VHqci8GXUvcnxdV2Hf+/w4Og=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tcwP5be5+nwV5FseSUBzoToVNqRxZS26bxIJy6ygu28A2exECohriqIpdwE92FL9b
 Dacj0A3wbRfFUnV8+GrXIX4p8pddwFiTPzDFI/zoQj+RRWOO1/+OCfH03VNPykWfLA
 kfjX8Qhnb4WDqawnpGhCsIGVKuu2qQoEuCR5hL1hK1hLqkSw9G2Y8STACVEudtdl4Y
 eIGd7FKAlv6Rwrl2u+OMDd2LmyTP2zvEVgNgz2enCBO3Wq5bQsivGyjkkT1NlN7t9z
 efBPuZXli3/8CI8s9uDAprvhiC16eKZTzc8vz1UFZELE7qOjDMAJQBapiyr4tAwcAn
 trrUof2Es48Bw==
Date: Fri, 1 Oct 2021 15:51:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp: Make use of the helper function
 devm_add_action_or_reset()
Message-ID: <YVbhKluONs9NKCoh@matsya>
References: <20210922130017.692-1-caihuoqing@baidu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922130017.692-1-caihuoqing@baidu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_032135_665164_1AE832C3 
X-CRM114-Status: UNSURE (   6.38  )
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

On 22-09-21, 21:00, Cai Huoqing wrote:
> The helper function devm_add_action_or_reset() will internally
> call devm_add_action(), and gif devm_add_action() fails then it will
> execute the action mentioned and return the error code. So
> use devm_add_action_or_reset() instead of devm_add_action()
> to simplify the error handling, reduce the code.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
