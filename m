Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43031CCF2D6
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5WYoncflevIoyPKBUNm8HFdOtCnSq4vsNg4W9WSJzs=; b=INDI6J2uYxVUYH
	VDHSf1aYyHJP7UXsqfZ/cHSpsUNmY19RhyJXSaU8tB+E/X/ofF1KD+teLra+kSbRBcvPzMbq7yFqu
	zHSwVTs14ZyzVB74/nGYJetSiC9q9CJVhk/l2J7682JnkG3B9893h3mMVzLy7uk+JvUz47Mphdvdm
	7POeE61vmHlWEMAm96oONCxbTcRFCz9A/n9t7xzqBLZIJ2ntb/FQcYGcWx8Rb20LYYoKz8kU3OEbp
	flYZql54bQA6oM4Bhnjo0rkIs+HFmJmeuEDtFBK/djrWgX3PuPYNl/8n2StdG9bsHFnlB3OfTMbLY
	ma82Hwj8hmaQvysOArKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhYg-00000006kiZ-3moF;
	Mon, 19 Oct 2026 07:13:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhYe-00000006khz-1jbx
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:13:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7C114600CB;
	Mon, 19 Oct 2026 07:13:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 786ED1F000C4;
	Mon, 19 Oct 2026 07:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792393999;
	bh=A/IzZtxeSyXH6wUEv+Aawu99CfdY79PltPRFXDfjJns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YyXM5I3hjvis3mOhM5+Jn1uLqF5RA4nuQ7YxhHz0DRmw2cR/nPHHOZO5jaOVnsMs4
	 /eAHovRIP4ftD4JHfD1iYWsKy2G8+aUrd5lNBYBm8WqiwngKytIyRHiLVAmSlb8aC8
	 tI0C0zMb113qfgQmvF+6snPIQO2eSH3AcSAQWFh3MKzUP54oFaiWIC0/mrl9ut6EYa
	 JmNbyJUqfdMXqtpVDRf1SvNC2HBLI2klESgvXK6+u2GMTkWFcCIIUG7uGuWv/5A51R
	 guT2XGlRh9o0bNbQM+5AKV68nclcIdf3rex3BsGYVagiVk4Surn1YGYoZSAiyiPAwj
	 LpiQJ4PQTai5A==
Date: Mon, 19 Oct 2026 09:13:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>, bod@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
	gjorgji.rosikopulos@oss.qualcomm.com, hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com, 
	jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com, vladimir.zapolskiy@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
Message-ID: <20261019-funky-real-skunk-eda6dc@quoll>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
 <851434b3-4cf1-4371-9b4a-57dba8022e13@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <851434b3-4cf1-4371-9b4a-57dba8022e13@oss.qualcomm.com>
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

On Sat, Oct 17, 2026 at 11:18:48PM +0530, Nihal Kumar Gupta wrote:
> 
> 
> On 17-10-2026 05:24, Anusha Arun Nandi wrote:
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/media/video-interfaces.h>
> > +
> > +    csiphy0: csiphy@ac9c000 {
> > +        compatible = "qcom,sa8775p-csi2-phy";
> > +        reg = <0x0ac9c000 0x2000>;
> > +
> DTS uses 2-cell reg but binding example uses 1-cell. Please align:
>   reg = <0x0 0x0ac9c000 0x0 0x2000>;

I don't understand what is supposed to be aligned here. The code is
correct.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
