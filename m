Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A4BC3DA45
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 20:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QM1QITjmNc5FRT94UPv7nOxY12heHuOptHXiJaPGDgI=; b=bEAo5KgikIEUte
	dvEbui+A25VQMR2IaVu6dQXL3RYF3gUShzeiQmjtd0/QMuD0k9pecsiIZlkdf94wmww/HFJLdlv5f
	6scel7EZX9fphojkcDc+GefVPbJsHfZxdGNIBypYbWMJd5j9rgCLKoZc4FZjs0Qys1PTr3/ZSAZwD
	bKmiXA0cWlINZCzbGvggsFZBin/TgAIWKXxjN1hQup8wj92FR8qwTTjfbuHlboj60P7zrL79boVC7
	o94FttL7+DKq6eAGk5VBZLE1/kgXZ6l9pYNZlc/KBt9kCZlAN+R1Xum5xzOjXeVh3v0UQWwHjv2bO
	VbTCMj7hOELxZtd8koCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS01J-0000000FIV4-3NUk;
	Thu, 11 Jul 2024 20:04:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS01G-0000000FIUR-36Xs
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 20:04:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EFED8CE16B9;
	Thu, 11 Jul 2024 20:03:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2143C116B1;
	Thu, 11 Jul 2024 20:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720728236;
	bh=MydOLmn4tsc58jf8mTfT8rJyt1fE6WW3Aq9AAAEZl2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CP4iRO7DI8ej5/jS7utl7rgggWNrTey+CR14BQ4luX8o90XEkEdFFcHe1aOerXyxS
	 6kdWR2fxDdvmER8g+QNZHZcffxbSH2bVW8lgXvVQwBm41SrYlswEdAWMRbv7q2QlS1
	 1j63usIMpld4T8YqOa4KzvsV8wFbBeBMUKlSmTnODLbJ9yAXTlqpg9YjYdGL/jKj7m
	 uRsVWbCrovYIBnktPDDuPgLeAh5qWAojN8fTA+yl4HSJASPglUDh3gMdWh8bohoy42
	 xsIanflSye/FxkiceKajZsZ1wilnKNA9C71quwlOM4KA/Bky5HxSum8k3fss0Fm1Or
	 I+ZieGL80dNfQ==
Date: Thu, 11 Jul 2024 14:03:54 -0600
From: Rob Herring <robh@kernel.org>
To: "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>
Cc: Trilok Soni <quic_tsoni@quicinc.com>,
	Tengfei Fan <quic_tengfan@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@quicinc.com
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for QCS9100
Message-ID: <20240711200354.GA2482879-robh@kernel.org>
References: <20240709-document_qcs9100_usb_hs_phy_compatible-v2-1-c84fbbafa9d6@quicinc.com>
 <20240710162745.GA3212156-robh@kernel.org>
 <3b8684f0-c89d-1a76-6bc5-93ced59dc51c@quicinc.com>
 <51302de0-5e4c-4e2a-85a0-e22549baa13c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51302de0-5e4c-4e2a-85a0-e22549baa13c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_130359_178911_3484C5A6 
X-CRM114-Status: GOOD (  25.07  )
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

On Thu, Jul 11, 2024 at 06:05:57PM +0800, Aiqun Yu (Maria) wrote:
> 
> 
> On 7/11/2024 12:45 AM, Trilok Soni wrote:
> > On 7/10/2024 9:27 AM, Rob Herring wrote:
> >> On Tue, Jul 09, 2024 at 08:46:19PM +0800, Tengfei Fan wrote:
> >>> Document the compatible string for USB phy found in Qualcomm QCS9100
> >>> SoC.
> >>> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
> >>> platform use non-SCMI resource. In the future, the SA8775p platform will
> >>> move to use SCMI resources and it will have new sa8775p-related device
> >>> tree. Consequently, introduce "qcom,qcs9100-usb-hs-phy" to describe
> >>> non-SCMI based USB phy.
> >>>
> >>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> >>> ---
> >>> Introduce support for the QCS9100 SoC device tree (DTSI) and the
> >>> QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
> >>> While the QCS9100 platform is still in the early design stage, the
> >>> QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
> >>> mounts the QCS9100 SoC instead of the SA8775p SoC.
> >>>
> >>> The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
> >>> all the compatible strings will be updated from "SA8775p" to "QCS9100".
> >>> The QCS9100 device tree patches will be pushed after all the device tree
> >>> bindings and device driver patches are reviewed.
> >>
> >> I'm not convinced this is not just pointless churn. Aren't we going to 
> >> end up with 2 compatible strings for everything? SCMI should just change 
> >> the providers, but otherwise the consumers are the same. I suppose if 
> >> clocks are abstracted into power-domains (an abuse IMO) then the 
> >> bindings change.
> >>
> >> Why do we need to support both SCMI and not-SCMI for the same chip?
> > 
> > IOT SKU of this SOC is using the non-SCMI solution and Auto SKU
> > of this SOC is using the SCMI based solution due to additional
> > safety requirements. 
> 
> More add-on information, IOT SKU which have qcs9100 soc mounted will
> have firmware releases which support non-scmi solution.
> And AUTO SKU which mounted with SA8775p will have different firmware
> releases which support SCMI solution.

Yes, I understand the difference. My question is why should upstream 
support that? Normally, I wouldn't notice or care, but the churn of 
renaming everything makes me notice. Why do the maintainers need to 
review all these extra changes because QCom couldn't figure out their 
plans?

So after you duplicate all the compatible strings, what's next? Changing 
all the SA8775p bindings which is an ABI break? Presumably, some 
bindings may not change at all? In that case, you don't need any rename.
I have no visibility into what's coming next, so please educate me.

The minimal amount of changes here is you are stuck with the existing 
identifiers for the non-SCMI SKU. Then you can add a "new SoC" for the 
SCMI SKU. You might not like the names now, but you picked them and are 
kind of stuck with them.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
