Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ACF1C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 05:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrypoovUErZ0gpAb/wpqDBAysXOQ3hnICmg96eCjsSc=; b=e/z7OnvyDXlvWi
	+bD4VwurN/4fgps2sZZ0KQL4wtCwVeLiHYJ0Ktfi7UT6GwP1aq0wA8kC85Z98Qw9cPeQ74NSdKodf
	Az/diAesPnIHpET8v1febJZuVPBvoNdDVlkqs2kBLWiRck0cF1Lj1WZkocBOIXhh64DV8KDcEYx3h
	rGUdcgLjUX2+TW+oPscvjBB+//pyFYoRfb1OayEcDxST3QHlhYwpBU5tfS8c+s5kaWxeF6i3q3bwT
	1TeFFt6+Osw1yEUGGISbOx9+Yi+4O7rpzCLiS7MRrceiM/uR3I34v8+YrRrirowMsQmh8NCAeedr+
	nlUGOSRg8Fqj7F6t9tsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4Bw-0000000Dh5c-3JCV;
	Mon, 29 Jun 2026 05:05:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4Bt-0000000Dh52-08Z4
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 05:05:54 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T4Naju1767236
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:05:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SphvedPAcYBkMmYiWmMFQ6HZ
	BK+WcQTpTR5JD7DeEok=; b=AqT4SD1czj6Rmf5HKmxAnT8OhcM+udBreSvm1L16
	OS4a7Z9ZNThNVM2O0FMMdEnKzbiGXloHUUFot6e+tY5W0DbIbpUN85cduySEU5ma
	1atSPNkA3qeQJfA87AhQl1xd0mIcLd1jCspNWmaKciaGpXYSw4XpkhVIGVdqi4sB
	Bi0VMRekZ0YGqYHDWnyY8s7cTniRm7onrYRZ0Y5QTjNxYTndx1cCVK0S2k67i26d
	qN0Y2/VKTxCQP5J7xQ8zsvotgNUHA5waUPtEJk7mZRo3fwD2UPBYfdYVTYxwu0Hm
	DcR9P+p0TuuW+PBZ5tsLBKvNkr9jKJnU2qBAS/sC2AHNIg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f270a4k2j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:05:51 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-138acbc0e69so14375790c88.0
        for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 22:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782709551; x=1783314351; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SphvedPAcYBkMmYiWmMFQ6HZBK+WcQTpTR5JD7DeEok=;
        b=Klp2xzZGVeHqEPhcMbleiWpMeT7BkQVvPAxW+6jb9JeoCQI8hxaxljqolYLyi6XWPm
         RBF4S8yxMjQw0V/lXuY0oghCjcezqvLk167UfjLjVwKwPXLs6sRbzNhS5Z7tEZsI4GOH
         ANzW5sLEjOnLYacBk/n2YAuGEaTZlEIIyWjljW+9M/EV1K9gM5/hQzSr0DmIZOnfabe9
         Wew0Jx+9bGJwJTdPJI6+mtRRaMHL2Kz1fOLqUdubILAowrdW/Kb7DFwAvsWP1DMhoKsz
         pwExRrsl+R3kpY/BGVlygnBWapNslhWUU+2wLiBkgueqyTYQFmCxgPoEpLOE6qixZOUb
         BZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782709551; x=1783314351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SphvedPAcYBkMmYiWmMFQ6HZBK+WcQTpTR5JD7DeEok=;
        b=Ri+AaYlTg76bejEhs5VByn2KsFao3Yjhkts+lhbY/adCJ24qfQzW14PUQb8Ubm9Nz5
         O7RTwmdTOUBKyx0wiYZ5VhpsHvngeD4rH+Rn/oMu5TjT/OoWtwBxk+Vi/J/ZPDPcuctF
         XH7oIii0/MuhhYFDrdQtV+XJw2cdtJkxHRG/5C5qmTqlQL4sTDtcXonW0/OvN3eb4zTH
         tnITorEhZurow86xa3dwTDQJlg2xbMi6lbY8/xZRYYS8Rbxa+SLDTflapR2f9NfVaruc
         JGvQK/Si6dlOnlhY/IO73akrNpVdB8MclCz2WNfYrRfErz1cdjjL2hol5b7WMhpjOG3u
         IQ4w==
X-Forwarded-Encrypted: i=1; AHgh+RqWK49diTGTZB4XncpIUDa+afq1yFWUX6/TxBV2rV+QlanB5bvafJI6qN/fO96RSCCnBC68cKiEFMs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCzco3VN+BF7Y3CTjFk3GN9MCyN4S6ybY35uy3nfAj1WxAnacJ
	Q/Bn9m7cbdnIprRCTuZMbEZjGIhXKdZsIRznl5SZRODofWyTY0PdgOBn7h1oqQ1Ng8jbLBLjzBJ
	r0DtW4yHeWrgoF2W0gJsNJYNymjp8WIi7uyK6PpX1lCRcmxR3uO90r4eVcRFX/7ZXvED5
X-Gm-Gg: AfdE7cn6c/vuyadvQHbrqe46yS0hshWok5FV3wNTt2WfgHnIDI2B5E175aOMQcHdwYF
	+lDWcWuDXUiJBvsAqYp6H8dMuBJ5/l3t3LqTqerCXb+Wy5RjMCtvH7LNdPIz2BDhSUeJrB9KQrc
	b0FPshRi7uxwvO76Rw3+yceu0OAUqwYLx+EOKhSQhqM93DgxCDwUr3nOwGsUFSAw0+KkjWTvKsb
	Q5pl98aHtqKV/JeX6vJOfCmwb6whjUd8Cj8chRPAcDE9f3MUczJdLgGoqSppsO6prGl8vYg/YI+
	JNzW1XAtCNSBss4zrbh255BMyQRcz3gffm+pI/Bqw5lk12jh/SIhpwTcDRjmZUZ5aUpMnQEhk4w
	xot3uakzYGILvu5FSFj3uxbjPC2+5uuFqDgCiwkFxi0HxWwXiiAH4ikygbw==
X-Received: by 2002:a05:7300:2203:b0:305:56a:c38f with SMTP id 5a478bee46e88-30cab3855f1mr9060498eec.26.1782709551121;
        Sun, 28 Jun 2026 22:05:51 -0700 (PDT)
X-Received: by 2002:a05:7300:2203:b0:305:56a:c38f with SMTP id 5a478bee46e88-30cab3855f1mr9060472eec.26.1782709550644;
        Sun, 28 Jun 2026 22:05:50 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ca5f14f8asm27950230eec.6.2026.06.28.22.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 22:05:50 -0700 (PDT)
Date: Sun, 28 Jun 2026 22:05:48 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
Message-ID: <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA0MSBTYWx0ZWRfX01503Sp5h8bg
 E5vi3eDbUjdvpZbIHWk9WrL6+phYsi/PfmzAvTHJYNCWq0KtnbxddepUR8dlZEDfFQg8ZXgCq2a
 wrunyNhcav+hxoxBxBWuWRz1TD2yJ38nOm7HulYWauJ552aToPN8kXQVdfWEJVILE5DGrI9Jtip
 CYeYf+Jiuo0kw7UlRJSo8HsBD9Cc6DeRzYMoHe7IjJhjao//vVrr6aReZkRO+DIdpTcMHItD427
 CWHzANcaMKViFZ9q5DHvi09V7YIsa2RTMI0P6mQOfBb8QsuEfw6JVEdICoQLktnv/SJiLAnJiQo
 U7AMO410m5K1LkmcHorVZl4ZqZ4Ky8DnAltFpQzls7Ufff6gb4+nMQHSzAKvXNXZQgJaTQt7MYd
 pBMo4CVf4f5BMzChtNWyU25KopJqE6Zks1JbGMYAZcJpojfhlN+WylcgOYQA6kBNsw4/eGtEmdI
 s5ozs3O9dZ9EP5Xx1CQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA0MSBTYWx0ZWRfX+uHiRrAtE5bd
 jWH1s7rVLSkMpaSBAXjYdbXxKNMBu22t+FDMaTpHlU9toCB5nL9QNaHmFNM6PDRhzswGvsZtvIV
 lhgQb+Wh9J+v6i9baSWNr9KAif3gttU=
X-Proofpoint-GUID: Q1SeBfuL1ZH6aWV-UlT7QLCj_PRNlvUj
X-Proofpoint-ORIG-GUID: Q1SeBfuL1ZH6aWV-UlT7QLCj_PRNlvUj
X-Authority-Analysis: v=2.4 cv=Fe4HAp+6 c=1 sm=1 tr=0 ts=6a41fd2f cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=4Le2suw5-MkOVKQ7DJUA:9 a=CjuIK1q_8ugA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_220553_074870_413133DD 
X-CRM114-Status: GOOD (  18.65  )
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

On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
> On 5/19/26 7:47 AM, Qiang Yu wrote:
> > Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
> > PCIe3b as consumers of that shared PHY provider instead of separate PHY
> > nodes.
> > 
> > Update the DTS wiring to:
> > - point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
> > - add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
> >   &pcie3_phy using two-cell PHY arguments
> > - configure the shared PHY node with link-mode and dual pipe outputs
> > 
> > Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +		pcie3a: pci@1c10000 {
> > +			device_type = "pci";
> > +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> > +			reg = <0x0 0x01c10000 0x0 0x3000>,
> > +			      <0x0 0x70000000 0x0 0xf20>,
> > +			      <0x0 0x70000f40 0x0 0xa8>,
> > +			      <0x0 0x70001000 0x0 0x4000>,
> > +			      <0x0 0x70100000 0x0 0x100000>,
> > +			      <0x0 0x01c13000 0x0 0x1000>;
> > +			reg-names = "parf",
> > +				    "dbi",
> > +				    "elbi",
> > +				    "atu",
> > +				    "config",
> > +				    "mhi";
> > +			#address-cells = <3>;
> > +			#size-cells = <2>;
> > +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
> > +				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
> > +				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
> > +				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
> > +
> > +			bus-range = <0 0xff>;
> > +
> > +			dma-coherent;
> > +
> > +			linux,pci-domain = <3>;
> > +			num-lanes = <8>;
> 
> Is it fine to keep num-lanes 8 here even for configurations with
> bifurcated PHY?
> 
> I would assume so, given essentially this is a x8 host, whose 4
> lanes may simply be effectively NC 
>
Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
never enabled at the same time. When PCIe3a is exposed, it is always in an
x8 slot. But if we have a x4+x4 platform in future, we can simply override
num-lanes to 4 in the board.dts.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
