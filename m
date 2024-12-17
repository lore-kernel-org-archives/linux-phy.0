Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AFD1E7716A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Dec 2024 07:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDJdJuZvzkfcFHOenYSNa3d2rqrXAxN3qndZ2p6aEv8=; b=aZqF4YM76eq1WI
	hxZm24Q0ozNKB3TEOSyIc/8jbfJEgT6ifQa5t1G/g+shuRyOVZZhOgCDhR4z9ZbUDldszvHsjfoMv
	UMttON7apBkZdTyZjiTEdfFTKQnLYtr+rgWeAyLi3JsTo7KEJoxxGsGlQOcpTY5B92L0q3qbmiJtf
	hXkdZDZq1YdFiOyDumdKMiyStKR0qDHzg9uVesNI8tfd7/xBl5rimWbUwvMjgDiXmHNMrGJxFU05l
	1VHDeTn86YubJuLA4KP69c7SMcjAEBAF0rlglvB06dWbq9QdrRM4lSGds6xKVy2AxZfGQ+X6tKVVx
	+ISioQo2OD5ogLpXt/ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRzc-0000000Ca5l-1LZP;
	Tue, 17 Dec 2024 07:27:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRzb-0000000Ca5b-1A5c
	for linux-phy@bombadil.infradead.org;
	Tue, 17 Dec 2024 07:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=lMDKTFtIQGPlMxLBeDOm3P0e+ebHgkKAwfZd+6Daja8=; b=bpXyqBMZbn65lF7kuYquWJc1g8
	ToHCcz/znTqcRaRfr1Mbq4lSs+AyQErBm+hbknnPW112xgkHELVP2whAsrDRQLfoQoR9+QGdBqZ9I
	nGr1VY0Z2rjgmU9aY+e7LkWlipF3WKJAQYIHqFrpJzel5JZUMaJPW3YnvK6ufuX2BPggym1zHhCCV
	v+uCuObKAHsLEAU7s1nq15OradC213cEswBeAQL4E6MGzv+J+1OcIAp/fBsIKCOnHVePb37Wkx1Rs
	bMdZPrsRwMX8iuJQ9lrEHcLLhHjnnFCYBek7ifOcsXikDlXuTD6ssatJaAXWlOcIbPsqZlP2/TN1g
	sYScY/RA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRzX-0000000529E-0Mob
	for linux-phy@lists.infradead.org;
	Tue, 17 Dec 2024 07:27:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 517DA5C5495;
	Tue, 17 Dec 2024 07:26:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76026C4CED3;
	Tue, 17 Dec 2024 07:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734420457;
	bh=E/Ox3kudr//gds5CCkXEvKZN4F2VPAOGkX7l6mnxOOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F8ZQlRnZJITWtv7Nv//BDvpDhrjU/74eSXmUNJOZffUsOIYx51Ib2GRbjN82QaSXj
	 WW8U1PR7gLpqS88fX03C0+F7KegOUljHRgIIIMn+Ax7DIihhBcb6pthzGLQYwzgvdR
	 rbVgYwQPdvSWfD6GNM5JyRU/8iPYvqpgkqf9m69ZSfEQdwkOacM6lTtnWU88cA5xY0
	 wBuKOtwyG6brhdZ2JvUs9JSNINRumimHmV903Cz1FnwrYRgFz9rgBZfs9CXwcmze00
	 ptFRPLf8zIYGomQPMqyC2RM2IFzIKZnCDFR2Kio8g3eOvLcWxNxiS3xYJThJK61pWV
	 4cenV94mXsnIg==
Date: Tue, 17 Dec 2024 08:27:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the IPQ5424 QMP PCIe PHYs
Message-ID: <lbzoom3xyareorikzgdcroiysgewh5z6r3pnkkjdoxcyogeyc5@pjyeldrte4jb>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-3-quic_mmanikan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241213134950.234946-3-quic_mmanikan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_072739_581793_CA79F91F 
X-CRM114-Status: UNSURE (   8.50  )
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

On Fri, Dec 13, 2024 at 07:19:48PM +0530, Manikanta Mylavarapu wrote:
> Document the PCIe phy on the IPQ5424 platform using the
> IPQ9574 bindings as a fallback, since the PCIe phy on the
> IPQ5424 is similar to IPQ9574.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 21 +++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
