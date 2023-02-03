Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4BC8C636CC
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 09:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK9Mf4M+y/VnHX7c2GMJ1phcPyQ2AhZMOZQHw4MUEaI=; b=QKhzLVGLIP1e4A
	EmwokMTC5huBiarMfxXq5lJfud9dFixaE/zzoaHimWEFhN/1QSftbkwRhfO/OHNvQjjJinrsnoCJq
	3gVQgPrCOSnGqcIJEt7GMIbc65SkinVXQdSJmXZiYbWP9htk+aOhbSvO9RvOj3bUA1ksnony+K8Zh
	HQ5pjMe7AXFWTa51N6WrTXyKBjl12EhZhG8zXWpTXRctyczP5smferFDFL2ClL0BbdmzOrUHN5a/C
	XNdksKHinskW7sdXTcxHGMh5cx4pa1bw0dTll761llUxMD3gak9jYyPWI7d4ktr2a52NOoHftJlse
	NL2fwX38yOh7v1cVjLHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsi2-001FbJ-8p; Fri, 03 Feb 2023 09:50:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNshz-001FaF-I8
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 09:50:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E33EB61E47;
	Fri,  3 Feb 2023 09:50:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24351C433EF;
	Fri,  3 Feb 2023 09:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675417814;
	bh=T/9LxE7WE8hNMmPu7X+WMeI+t2/HXTaNVNYlFa2pJSg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OGGnspMNgxmcjE2WsurdbifSi99UposcFBub8O8/rdgBeXjCbI81B6rmOb/oXjbty
	 6NtbZRgMk19wigVNXUrITCNbWKE86AmMosTcHnbRynNvvIIOt8pnTuwN4jA1omfemj
	 5Oilpis8mpcZQAr7UdVaxu99LMMgIikf4SXZWRmhwN5qvleNfEszRBQsmazsFNKbQ8
	 8KrRvbfvO1jYk2Fq22BgfIIvzOftfn8IGSZebAiF4JQurOIQSv8fLHLjDacwsJg+nD
	 2ZAx+LJKTWPwqHZQDqV6fHTN7/fq7r/MxGCaB7dSZPFWLf4Z0EdVJp0tRJ2fjzBxGk
	 3mET6IY9qEGAQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNsiO-0000ur-IV; Fri, 03 Feb 2023 10:50:40 +0100
Date: Fri, 3 Feb 2023 10:50:40 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 11/12] arm64: dts: qcom: sm8550: Add PCIe PHYs and
 controllers nodes
Message-ID: <Y9zY8L2OhRacl8Qf@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-12-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081807.2248625-12-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_015015_664750_558DE4DA 
X-CRM114-Status: UNSURE (   8.16  )
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

On Fri, Feb 03, 2023 at 10:18:06AM +0200, Abel Vesa wrote:
> Add PCIe controllers and PHY nodes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Looks good to me know:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
