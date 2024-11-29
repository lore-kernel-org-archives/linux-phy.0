Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5350D729FC
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 19:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QIm9GIjJyOH5UFpmRinz967f88ddXD62CSpia4tEkFI=; b=VDoN6jCKcnV53M
	ydfGaffRpc3NfTTuJg9HYbtcSxhXFX2w7T+3n7B722x2QuMttOjXL90HBrrAbt4JbRQ0lIOrk/SHM
	YZ1Sf651rkZkIMrXoix0DeLAvHLbykngiNmgjoqmZamR8eMSnU2VtubEcRoy2t5ce2RYxNQUd/WRG
	JMEHOvqMsZVbK1tk9DYRq2pL+UazIxbDFiVdV+Zin3fWLyqxK+73erkETUWirwav/u23elnohW4La
	2kJJIGNvQynluqI4+IPfkGS3kModd17Ry6dnFUWMCZMYKC7QyH1rrlXeafU9AlahetR22yeajuGwc
	At+EoeRuXamMqJaRKNXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH6kB-00000000qfD-2HK8;
	Fri, 29 Nov 2024 19:33:35 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH6k9-00000000qek-0ydV
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 19:33:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C5CE5A4315F;
	Fri, 29 Nov 2024 19:31:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBBB2C4CECF;
	Fri, 29 Nov 2024 19:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732908812;
	bh=YdVH/+LTNu3Zk1VbyIBQ1Lm9jD9+Us5Wa9cfEaZxXWY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ofG7zYDG1CXizqQ7HkyqAPCtuu8IuPmTYPLhY4w/HDhhWC3g/ROM19xJ3J8/u1+jO
	 GGgXY3gO7Nigfnhqb/zGihvd2vgshQumgI22XvLcsYNom7cKBTFAtC762getOFddq/
	 scRGkU9dFlUwMCUNRllQg3dtWRp633HgLB/Lnu2Wc7qhRR/pL2xql1fLio4YGiHvBc
	 82K8x9NcY1mRD/5a2iRuUMUyKPx8DbFic4NaFNzOnuCuyE9v73iJW2B5CzXzLurf2m
	 0HtQ2q0qmCMfMjmVtpZ9tUavmHZYqlWr9E5h/9Ht/iyzPPKUlmzxBBKS7q+1qvA/Wk
	 QyEDvc+GaBlow==
Date: Fri, 29 Nov 2024 13:33:30 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
	lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
	neil.armstrong@linaro.org, andersson@kernel.org,
	konradybcio@kernel.org, quic_tsoni@quicinc.com,
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
	quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
	quic_aiquny@quicinc.com, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 0/8] pci: qcom: Add QCS8300 PCIe support
Message-ID: <20241129193330.GA2769318@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_113333_337598_FC6CB755 
X-CRM114-Status: UNSURE (   8.95  )
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

On Thu, Nov 28, 2024 at 04:10:48PM +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS8300.
> The series depend on the following devicetree.

> base-commit: eb6a0b56032c62351a59a12915a89428bce68d1d

Also, this commit doesn't appear in upstream or linux-next, so we need
some hint about where to get it.  The most recent -rc1 tag is a good
default unless the series depends on something not included there.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
