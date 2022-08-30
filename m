Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D50CC3DA6B
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32Zx1rpGNCdlO1KVBRAHels5kvAJDoBYkuawEP4UfIA=; b=Cy+NrnF/kxdPho
	nRwrXvtBLSNxTeuIeSzKuN4uHpQQ6n9wm6WXAb2fHXO4O3WaOCMvefm8gTJc1qTB8AjtUE7Hv+iOT
	CEJQIqi0jZaO/UYESCFF7M4LGxyTrJurtZdEFP88tOY4UgAyZTwHBmrANIth0gLm/2XnNijxwBaMc
	/eOJFGePi1EGDzlQB4kSuFcDKrilwEl6KfF4QUOkyiTm2tCwQJ5aVHpflmjulT4pZn2ANfMG1Jenw
	vUa/vlMeLT/SZ0yKK5KNWQkK6NkRHkMIKO+vuipC0SFEC6sTke0XibeYS6qTztyxF+9sRxipFOUwG
	k/7hd/+Maa17ksSeho9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvIi-00Eeam-PW; Tue, 30 Aug 2022 07:04:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvIf-00EeYf-Su
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:04:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6404761489;
	Tue, 30 Aug 2022 07:04:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F010CC433D6;
	Tue, 30 Aug 2022 07:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661843080;
	bh=T/j3QvsG4mB6yh1hvgD+vOaPefVUrCtRE0XdtXtVj0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W+F4UXriOFnswgh1EJjzDzmfORpvrKiTobS+i0f3/AI18BVvTBBShp0PEC72u3kEP
	 VjWC9JWAHCQq4NcjL9WQ4Nqnqv9GZ/uYkUdMpnsfuhFWx8H4XsEkL4BTzODBqHTCe9
	 ePmOupetsXBWbnna316Xw6Oi5s80CvN1mzRB7W4m011cPLZDDd/pHcng5gqHoB5kk7
	 xdglVV91dXxVqgKpzBd4dhjc3iGzjI7lv5wrNfoowYY2aWPwJbu0bTm2PChj+j9I2a
	 htZjQGUihY7OIkjFCXZ3/3wrJSjrB8gDft4UHKuBBW5fR1UrqkP0rre847ZrbnWasT
	 hLiV2YbVnZNJA==
Date: Tue, 30 Aug 2022 12:34:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konrad.dybcio@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
	angelogioacchino.delregno@somainline.org,
	marijn.suijten@somainline.org, jamipkettunen@somainline.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add SM6375
Message-ID: <Yw22gxB4is7hsrcH@matsya>
References: <20220716193257.456023-1-konrad.dybcio@somainline.org>
 <20220716193257.456023-3-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220716193257.456023-3-konrad.dybcio@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_000442_012619_9F39545F 
X-CRM114-Status: UNSURE (   6.95  )
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

On 16-07-22, 21:32, Konrad Dybcio wrote:
> Add a compatible for the USB PHY on SM6375

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
