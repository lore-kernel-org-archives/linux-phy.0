Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 128E1C54E58
	for <linux-phy@archiver.kernel.org>; Mon, 11 Mar 2024 17:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqSiG5odSxFx7DQoZOp21Hi1w83Dfwh+GuZSxJ9JMVI=; b=ce8gq9GkwXKCjs
	/NpkuatJCsnGww+XeONEsInftL/qkAcH7LkVEo3HgCjVwDIgf8w7jiFgl1xoEmb0cAzDeLJwWgJsW
	g4VCPH5rt/PgX+3z6r+GlBgsZO/32tMV08WC8zcXSRcsJAWGEZbAu7eUgm7gWA7zbZUWW+ZKdT9J2
	MfE83fFIN2SR8JBI+oGEuHuV88u7FerecmWGM/56mX97FWgKCOBVDkzNGAeQJhncR8HYfcsQ2cD+W
	1y1SYQSPwE0LOaRyjhTbQnj/0CeymGsIRYGhNMFIEE8CeEKECfle8H7Mn7oQ9iM71YyxVjROkXnB0
	+2UHaia614D5hk+ktTpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjjgR-00000002Ylg-1xYh;
	Mon, 11 Mar 2024 17:43:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjjgO-00000002Ykv-42cY
	for linux-phy@lists.infradead.org;
	Mon, 11 Mar 2024 17:43:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DF3B060F45;
	Mon, 11 Mar 2024 17:43:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 666E7C433F1;
	Mon, 11 Mar 2024 17:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710179007;
	bh=buzO+sFEpQ/5zCrBZhxY5AnpQSXE49oy4edP8NiDR8w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=daCI+he29AgFiKQspdIJ0+mjpXSeGL7E3xZn2hPLdKbhmzHXUBFE4u3+m1TmlTji0
	 DKQru63fHNsDqFlqSkzxnU5OwwATX43GdJ6S4nay7fnHoakIr59fKB3yFh8nvcuvWt
	 rESiTLw0kmJBdLvR1/AhntKlAaPztaUGhvtlsvWWoEo7OkLp/mRCn1Xd4VIntnIVrH
	 FnfnmiFlxLS4aWjciaidA0kpUH14AXfUzZEjRZ3YeivXFzpnNQaUhA+ZJShqftAyr8
	 Ryk7wN5fQz0EIGnZpjhiXqNBlMAdZMCtD3LHduMs9A2A/YNIpmfWvzEC4qAeNn1x1Y
	 a9UD6Wu+ngJNw==
Date: Mon, 11 Mar 2024 11:43:25 -0600
From: Rob Herring <robh@kernel.org>
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-usb@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-arm-msm@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	linux-phy@lists.infradead.org,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
Message-ID: <171017900463.1476132.2926850011741467415.robh@kernel.org>
References: <20240311120215.16845-1-quic_kbajaj@quicinc.com>
 <20240311120215.16845-3-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240311120215.16845-3-quic_kbajaj@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_104329_066720_46A84E96 
X-CRM114-Status: UNSURE (   7.71  )
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


On Mon, 11 Mar 2024 17:32:13 +0530, Komal Bajaj wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm QDU/QRU1000 SoC.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
