Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2066C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  9 Dec 2021 11:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoalWmc4qp+/CQ7biW6stJKg1nYi8C7unTrnEyKaKus=; b=drUspjoBEJotjm
	P/P3rZPswszOhdgyN08UVS/DnlO3+7aaw2/w2bwNpAmNEQhWav2J8WpSZHbePt2u9uECMWcHudmrY
	Oz70uzFarTFKQSdZ2RqAPBdlz+PFRp7bRig4TVpK93gUcFHMM70yAVqKPKbZ1sV0CIohmrUallwCv
	la28CPPFCrVryzrZJYVxC4MJ71FQsFYV8nYTCE0geUeTWDy19WvYMUsOWWItMhDHcxCWTEl8+ICHa
	uwglDXwXyKNi7LJslDOIeqHeXfrzJwD+JxdJE4P5J2pLyWjs3ncFh9zQGnqu2KcorlPgK/oKXjBzj
	VYwomfcDjI5p4uIlNSHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvI1A-00FrHj-FA; Thu, 09 Dec 2021 11:55:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvI17-00FrHL-Nk
 for linux-phy@lists.infradead.org; Thu, 09 Dec 2021 11:55:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7E938B82438;
 Thu,  9 Dec 2021 11:55:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 744D1C004DD;
 Thu,  9 Dec 2021 11:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639050915;
 bh=is6igi1NJQa4gUXfGMF8lFUAElSEVdfN9yuRy5gRbls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eN3fTo4YfwAW0bcX7uK8+vhYz1NGCb8+UzYKtlyjHs/uDcO4ljcT0IQGyZQc1Cu4W
 GuMIcyD/SCy6qaEIJzOhKElviDsP/nAVFw+Q7K+dF3Fp9XnL4N4sgokZa3S+1tJto5
 cq8elq5o3PQhfhsvscNIyJTKJzAFf/GL3avbxDXRke4lLS8Q4GiO6x0hjhqVh3JtQp
 oNWSsbch1o+wQY+0Ah2eMYluZETachXslAnlqzluDsvWZWhOUbeDKi0ursLy0v7e+L
 0rEeO9dMnfBbkorgrAUMCn2pmuZ145sX22E44qkzNXi4M3aIpuH06BqNxcy/hjs/z6
 anficz1s5tmPg==
Date: Thu, 9 Dec 2021 17:25:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Guo Zhengkui <guozhengkui@vivo.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, kernel@vivo.com
Subject: Re: [PATCH] phy: qcom: use struct_size instead of sizeof
Message-ID: <YbHun5KtYPH2JMP0@matsya>
References: <20211207131642.5313-1-guozhengkui@vivo.com>
 <20211209032114.9416-1-guozhengkui@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209032114.9416-1-guozhengkui@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_035517_933383_0BD84B16 
X-CRM114-Status: UNSURE (   7.94  )
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

On 09-12-21, 11:21, Guo Zhengkui wrote:
> Use struct_size() to get the accurate size of `clk_hw_onecell_data`
> with a variable size array, instead of sizeof(data) to get the size
> of a pointer.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
