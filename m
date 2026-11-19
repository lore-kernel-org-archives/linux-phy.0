Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041AB60A262F
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 16:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FS6+pe4y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=O5M/YeZe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ntobRMbJE8DeJUI1mNUn0fLxqy+Hg92QjSsCHljUdVY=; b=FS6+pe4yCJIAh3xzBkFHRvHkLO
	Aq6lAhI/UktRCk43sosY6b5HrxUMDyjY4MkYaYLSnCWbLgCsFh5vB6eFBbki5DDYEglibR3rhGk2/
	3iQGTcGagBybKR6Dk3Cjg8/Bp8wEqkVfl7dnfzodrGkeB1+fGRdBPAHEapMwb/2H03Scbf+eB5zUc
	tCiUwIwlpG4KcF0OAJdTEBOVWJOM61Cq9uxIov0pCkxv8oUx0JzEPgNasYgSH5VnUq6kTd7K/jfp9
	7kVwV6zyXws3yhXRIoNjqlmgtW8RCzFjRtUGy9Y47x73fCPKG/3b+lu1uGZmqQOq7c3eiDbbTAply
	NEpitgZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vl-0000000Cce8-2rTG;
	Thu, 19 Nov 2026 16:24:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vl-0000000CcdZ-0czw
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 16:24:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 70A9D472ED;
	Thu, 19 Nov 2026 16:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55BBA1F000CF;
	Thu, 19 Nov 2026 16:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795105452;
	bh=0d4XB0YTAQtRX8+hgqAgNWT6fwr6zYYShVEyknE8s34=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=O5M/YeZeC/FpBNKovFTnUVVEes2FAmmqEE7ghAKtIgRef6Wj9TpUFrjxfTvbCkMaJ
	 x/kxyNh+RcGQTnP4NqGmnIeNomLIPeOm/f66ua+N3I9JyqnJWkDEbTDrmlypEDtYO9
	 T4bYqcVtAelL9IbdAZUmZ9pEGH3ENlTeAou9qKpeORPKI4axXJWzj8axSQUIqcaKt0
	 amsFxJQgHSmVIid6h/gyv+5J+lbJ41Bi0bMc7CJsReBShxr8DcmJE83aEL3YoH1WGT
	 OvjGj0KZp7CGFgSRewCxE9WcpfZBi+kT/HMfH2X0J8mw4eS2taJqrRwXNyXB/qIG5Q
	 ox/bcFBHVMLNw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
Subject: Re: [PATCH 0/3] Fix up AON clamps on qmp-combo-phy
Message-Id: <179510544997.1370333.11528579298614736658.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 21:54:09 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 02 Nov 2026 14:59:31 +0100, Konrad Dybcio wrote:
> Various platforms have apparently not had the AON clamp writes end up
> at the desired registers. This fixes that up, based on the robot's
> findings.
> 
> Depends on (reviewed and ready to be picked up):
> https://lore.kernel.org/linux-arm-msm/20261023123512.1912-1-26rote@gmail.com/
> 
> [...]

Applied, thanks!

[1/3] phy: qcom: qmp-combo: Separate PCS misc clamp mapping
      commit: 391a14a0a31505c9202369258d47d1fc42c1fe65
[2/3] phy: qcom: qmp-combo: Make v4/v5 targets use the right clamp
      commit: ff2aca40e0d58c4f7f4fbddcb95f15d7d983af05
[3/3] phy: qcom: qmp-combo: Use V6 offsets for PCS-AON clamps
      commit: 478797c9284d2ad85a2fd1f61ba021932099b36e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
