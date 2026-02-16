Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E057E7BD85
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trcrucLF8llkC+9Mu81cdFgo1OrrvoxLqB0I/w3lJ+w=; b=WS7FcOspXAWCdd
	pLoVsMAPcuafJWXUKxXrJQKjxzxFTpWt7mc9NqgT6V+7447L7KHKaSWNdGCDzmYi2lhcRpNmGqQpc
	fZOda9jpGElB9TpiMppsMFkHqRo9Giv9lqyNZVoulaAaOgVwyCtrbFHhvjPsV97yEcaN0rGBLswc0
	H7o6BwrjrzNh5efmqV5YsgJziKkChQFO6ZY7Gp9hw5K0nO/+i7SnkPRxk8lBgNArSmG7LPaw3fpUX
	GQQvbF3TpsZW3pcqIvtriGkEJ/q3Ku0h1AYmw8WJWVOIOvqajSPOhR4OaxE5x7kbo+pXwVroHOHVl
	NhCNXBifOfpElRCCmJpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvTl-00000006KA8-3vBz;
	Mon, 16 Feb 2026 10:05:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvTi-00000006K9d-34qe
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 10:05:20 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8uBtC2536432
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 10:05:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FjF6r3afnuhXg0DwSK6GZ1us
	vzZbMW2fPMTY0Q9u+sM=; b=TOi8KFGei0IP9/N0La/GHhO4Yg2QMhsaHHJt+h3k
	BrKgTlt0oD9VrK3uj04vEFWtJHsDSZMX2zssLG5B5H8CmMcvHGb8wqenfo0av2Z4
	0WC+ddoFb0pTSecqvXlUOSIipNTQy7U1exZ3GOqLFEfDUzUvk9Ule8qRqy1DZrmG
	6Tsh+BSPjz1mJvP2bG1ELjCw9wGTP29L+HCDNpCReJi+y/HftRmmZJpXc5NuK6+V
	BbsecfIZmAxk8od4LqeLLUH2yfKG10aVjj0Fgbw0M/rbHxzAaSEEnZ2Ho0tTohHy
	Z/cMxBeYHgH7NGQH4OjaJ7wu4JqS37N6DRueH8WYYtPvqA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24c7s4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 10:05:16 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-896f8dde688so228660946d6.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 02:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771236316; x=1771841116; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FjF6r3afnuhXg0DwSK6GZ1usvzZbMW2fPMTY0Q9u+sM=;
        b=gBKeSeDE1OYZCterwJGAFnZV9UCDFoBqHCU5MTJKkA7vAU8wrmOTw8AwQmJkfH80Na
         8MLWh5g194OW3uwTowCQnRWDRRaYgkXftSjyTFOiiEGHUYXkvv82sTXJd/zjUb/zzvNM
         Yzou6cE7O4UzAh6tnFXDSTuF1DOoqaxQdM5TroX/q4FGHiy4As1ge6fFvPVhoMgL0Ol2
         DCAjJqlKFq8/CveQe+RrooHBTKLNLhrL46IMj0/FV9iYfhN34YQbj83zsTzOVmi6x3ri
         WWiW9uzZuJGl2ZlHy1yoM5QQ9gwhMTBZHPH45Z+zKQMrgKcQsmLypU0dFqRIMrccSDhb
         72pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771236316; x=1771841116;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FjF6r3afnuhXg0DwSK6GZ1usvzZbMW2fPMTY0Q9u+sM=;
        b=kq22vWED8rVpJ1nKGBxI9NDXR8vAtcVMKbdK3XZ6SbsvVCA/pzK05uYsGd2FxSewcR
         CIgI0Y9c3LYSm7t3QuHXGg6mNSHoACZTt/oi3XqmV1Dcnmh5kkIh4+iIP6/1jZedjCjN
         srNo4keBKKNUGjytdS8TDt1DRbSO0NMg20XxGT+Ny8yVs5W/rRCEx6JvV1bkQmEhYJWD
         rK5uKA7d5Ika8StsXjA0NfbluFielFZ9fHl8nt8QUwMg0qzG7XHY1iAOBUS7WxOTPsh9
         UYmJPsOZXJGTmsLAU1GoA7V4iG+FO1/IQUGUy2tbvs5L/QrB6ijvuwKyjxkfUmF4Xd5c
         fjkw==
X-Forwarded-Encrypted: i=1; AJvYcCXCtbkbaaQqS+VBGT2aDzcb7kAbIjiyfnI5qkrYzoHEEAQUdzBAxhmhRdIpeB0zNKEwpf7xSN7dI7s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2c9cVDqZuLrWr9sD0zSp3Md//Dg+IuVScV5cLit8R7PQy+Cnp
	SMMj3tGtdjnsv/JS2ial1pEvXYqzVi4fHEXLQStFfAiUpZQ2PvXum/LEfZQek9Fb4+LWmsaxOM9
	poURqwedPhiT+l7G/d2xdv1YpgUKjyEpVP9vgBBFLrSDcOtqCj4lGBhXGbgLpNrsEiNNs
X-Gm-Gg: AZuq6aLzllq/HwaN1EH4cqOKDzXxiabNwOI89qIMN9CUce0lY9J3OqJdtdsCunCWo+5
	lCJkBlV+hHfo8ZUUMZJ8jZ0kbThb88e0Ue2v5sQaZ4mHTkAZ5tt0IiBtkX7WeGUCyWzPG3Or8Q1
	OD61CQnC+mOIn0f2EM1aTD7DI/Uqht5eDNWNJi8qzymZ7iJQ7F8Qgmo446FjjDZCk3w5c3AN+Mi
	Mh8SEuXXo09V4mvwAPgVXTzTNh8F9pDaSPyJnaXet3zVJs44BBGIjLrNkxAL69c+Bu53BL9Th3m
	+Bv19fC1eodasiOQftdPYJoG3zqhvSc5RRzkA+5NP/6185xSZboLTPF8hKeD/6VoFne3Mt9CpvX
	IVDBtKb4Ksalh1jF7drD/Vs+Hey/cS31d5Vy2
X-Received: by 2002:a05:620a:370f:b0:8c7:140a:7dbf with SMTP id af79cd13be357-8cb424ae497mr1084295385a.77.1771236316113;
        Mon, 16 Feb 2026 02:05:16 -0800 (PST)
X-Received: by 2002:a05:620a:370f:b0:8c7:140a:7dbf with SMTP id af79cd13be357-8cb424ae497mr1084291685a.77.1771236315339;
        Mon, 16 Feb 2026 02:05:15 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ad0166sm25953547f8f.35.2026.02.16.02.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 02:05:14 -0800 (PST)
Date: Mon, 16 Feb 2026 12:05:12 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <wtlu65ohpv2e23uozjq7b5jl7kzhyggpmji35enpahay3nlr2v@nuc7f4mt27oa>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
 <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
 <7zdyb2wnojudnrnomnx4aiwvni3e6i52kfioflb3gslztsizkw@ofvvkvrv5f3s>
 <lvaxthcmqvjit4hnofqikxog3vi557elctiqc3nj3ere7rs47v@xcnwzrzc6koy>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lvaxthcmqvjit4hnofqikxog3vi557elctiqc3nj3ere7rs47v@xcnwzrzc6koy>
X-Proofpoint-GUID: 2dlJQz9-y4C9jxq1sQrCHFnxDhnN5tnZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA4MyBTYWx0ZWRfXzL6Q2cNnkfBt
 sZ+zMUzC+i2S9mJIqICcDPpR5oTGbFS9+7yQi+OefTUTOTvwTCH+9W1B4/T/zpZstppN64kmUSi
 EAEUwdUw+MXn1QyMEiSPrlkViK3hfK2GyRBA6y0POsLEVmhoRolrluWRnWl2sRLe2Byv+9KoGKy
 7jOJ+cXVUE/+smiIoamXZ4Zr6EwHk3OHW5rb5I5hHjHO5WQbSOD9GPgYZyJcIGmeqH65Ncf+U1V
 63DqZlnGi3r+NQNllxy72UXdPnmOyuz9U04D6alYxWU3HXgnQU2rvY8Le6duUbEmwbFIkPq94hy
 2Rgh+VYp+IWEXIcDbwoYMhNcATEBqq0H05rR4xiBEs95Lxal9uvEHYMCLip5np877e2EQgwqBFG
 Bh3/FDdEIld0RyKWKAvIOPZNgNGleP3O9JMPuzFd2lIMweeunA5MVn+Z7zoN1f2SU3h8NS1acZS
 W5wkXLAYobCdCFxPWLQ==
X-Proofpoint-ORIG-GUID: 2dlJQz9-y4C9jxq1sQrCHFnxDhnN5tnZ
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=6992ebdc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8 a=g50hcL_z2kQj7WSxxyAA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_03,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_020518_892783_4F3168C6 
X-CRM114-Status: GOOD (  25.73  )
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

On 26-02-13 23:06:51, Dmitry Baryshkov wrote:
> On Tue, Jan 20, 2026 at 04:52:43PM +0200, Abel Vesa wrote:
> > On 26-01-20 16:49:26, Abel Vesa wrote:
> > > On 26-01-12 14:53:18, Luca Weiss wrote:
> > > > Add the nodes for the UFS PHY and UFS host controller, along with the
> > > > ICE used for UFS.
> > > > 
> > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
> > > >  1 file changed, 126 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> > > > index e1a51d43943f..7c8a84bfaee1 100644
> > > > --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> > > > @@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
> > > >  			qcom,bcm-voters = <&apps_bcm_voter>;
> > > >  		};
> > > >  
> > > > +		ufs_mem_phy: phy@1d80000 {
> > > > +			compatible = "qcom,milos-qmp-ufs-phy";
> > > > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > > > +
> > > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > > > +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> > > > +			clock-names = "ref",
> > > > +				      "ref_aux",
> > > > +				      "qref";
> > > > +
> > > > +			resets = <&ufs_mem_hc 0>;
> > > > +			reset-names = "ufsphy";
> > > > +
> > > > +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> > > > +
> > > > +			#clock-cells = <1>;
> > > > +			#phy-cells = <0>;
> > > > +
> > > > +			status = "disabled";
> > > > +		};
> > > > +
> > > > +		ufs_mem_hc: ufshc@1d84000 {
> > > > +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> > > > +			reg = <0x0 0x01d84000 0x0 0x3000>;
> > > > +
> > > > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> > > > +
> > > > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > > > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > > > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > > > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > > > +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
> > > 
> > > Maybe I'm looking at the wrong documentation, but it doesn't seem to exist
> > > such clock on Milos. It does exist on SM8650 though. So maybe the TCSR CC
> > > driver is not really that much compatible between these two platforms.
> > > 
> > > I take it that the UFS works. Maybe because the actual TCSR UFS clkref
> > > is left enabled at boot?
> > 
> > Oh, nevemind. I think I was looking at the wrong SoC.
> 

Sorry, my bad. Yes. There you go:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
