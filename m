Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B55EC369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 07:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFPVc0UMAMIPfunSPgfYmVHvpksSgmNYEl4JuhNjK3A=; b=TfCkr9QGiYn0/9
	FMJ7JZFdrQVIaZm9LmlvEkK/Iv79b4ZVxukkjfPoMLezEL3hiba+aLbWaFlvuWdHLPHcsGv/0KLON
	/3gP0JJOcUTomY04vQji8Jd2Qgxmi1FY7d+ebYCVb56n0JaiWh4QcpnCYu4LeTVoADePdQvT14cUK
	BmN3x4m8+wTx1pJoBRVB16/8pv+1d4jBypteKuO+XFGX81ILkPc0Bpa9yyjVzAXiJLCZEspvFMdTV
	PJRvdiaofbVPk+Z0QrmfFkaQXIs4QJYO9e0+D7Ozbg2NM6SjS9t+KnOYWsyscMFFc/MJQwIgS3eDy
	1oDROImhySwsBqtSDQwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ERm-00000000y5P-0WKD;
	Mon, 14 Apr 2025 07:41:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4EQU-00000000xqZ-42aH
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 07:40:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2AC125C34C0;
	Mon, 14 Apr 2025 07:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0DD2C4CEE2;
	Mon, 14 Apr 2025 07:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744616417;
	bh=t2r22kypL7dkgR5icGf+FItZxkqG4+5fcqunKc1xsiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FX7WHlli6ntZdKYS5xf1F3wb3fLcfj/ewa5Pb4N8s+GkRSbkZsgn6fB3R+oL7V8hO
	 L1OTVYTlRsfuRJqWEcFMqymXAqw03e9DAgaOPrfh+xziTPDwVjUtvm1hASLNkoMGML
	 r+3iKHcBc3VIjAw4ekjZlTw36IfQMAFeeRtjT7xkgBRNNSu0BoDBGGkhXx3K0Xky/p
	 IPBcP2lJg3Fv2uSHcx5JQ4MPfxoGxmYrWTj1LkItKbNDkP09NrKzeE8H6oYbF11Yv/
	 +KjqCMX/puR7+DXXvvRxwb+VckQyqE6JmMPLraf06CQb5Kn4LrHb7+Ico6K376sNCc
	 e6RPJiqAoTF4Q==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1u4EQP-000000001tW-2uQ5;
	Mon, 14 Apr 2025 09:40:13 +0200
Date: Mon, 14 Apr 2025 09:40:13 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chenyuan Yang <chenyuan0y@gmail.com>, vkoul@kernel.org,
	kishon@kernel.org, lumag@kernel.org, quic_kriskura@quicinc.com,
	manivannan.sadhasivam@linaro.org, konrad.dybcio@oss.qualcomm.com,
	quic_varada@quicinc.com, quic_kbajaj@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Message-ID: <Z_y73a5IDO66AzY1@hovoldconsulting.com>
References: <20250413212518.2625540-1-chenyuan0y@gmail.com>
 <22ec4fc8-9368-4955-ac97-c49b3317d3b3@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22ec4fc8-9368-4955-ac97-c49b3317d3b3@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_004019_041443_27F6C09D 
X-CRM114-Status: UNSURE (   7.50  )
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

On Mon, Apr 14, 2025 at 09:30:19AM +0200, Krzysztof Kozlowski wrote:
> On 13/04/2025 23:25, Chenyuan Yang wrote:
> > In qmp_usb_iomap(), one branch returns the result of devm_ioremap(), which
> > can be NULL. Since IS_ERR() does not catch a NULL pointer,
> 
> No, that's not true. NAK.

I'm afraid you're mistaken here. See __devm_ioremap() which can return
NULL.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
