Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026D0C982FA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pwgy+956thLPss/Oz3/P5yVaWM0pLlCCnIgwMTcmOOU=; b=W/gD8dcyzYNKtE
	GftMRaVUZTafsoiwgbQxqbmV349xyLFlzycqYfP5oejUBKcw/Xl3EMp6Mp1qRhwpZBTvqHQcNX9gM
	blxUgR9xJ907RcSkEjpkCewdfhWrr0O1OgH5b73NH6hzV5dW8AHC6bacVAUNgrssX6z7AGySzL97Z
	341m9+Sr8h5dRUaV1EVHX5KqDpZC9V8KIdaRHW3YuZZ8p2CAxa0ev/ePXissaax+ZnRCP9zNEfWdb
	X/jR0MJl/8JQU7oYBe92UGKVwnvQlexHVG9Lutx6KfgZSSJ7WjvkOl+uW3yl0A3ehN1k6JHEWG5tS
	VG6ZEdPmMVlys5nxG/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8weF-00000004tbj-2zaa;
	Tue, 22 Sep 2026 09:18:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8weE-00000004tb7-1Nvu
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Sep 2026 09:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=XKotZtMS7ewKcsV6iJ09kjS/F3R0guDpSO4Eq1SOvq4=; b=mwgoAN3ttoREU/bYSn4ZK+Qt77
	q19nkJAQtk2IiBNKwjKnIqpYnSOcADvx8AhXTP/RyroKQQ4jIK6iuYc05BF6dFCFwQvPgaHwlWpxe
	QkvRrS6356597gN3yeZG6sHBcd+KeiJpq0vqz1NANN+nUNiU01ema475W3otrsLHS0g+NUYx7mH6r
	CfGjQq1WNr7RxFUba8hGDk0FmSlhpJUks8c59jEwn2R9Jv6QsGy363Esh7evWd4TpqSl8+XtRGiXx
	e24t8fEgKKaIfgjtrVBjIB1XkKTP8bBrT6ebJsqIXu3lSo3+czOxwxl16G9z3XaEeQNfMUPdcjTQd
	MusjSw3A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8weA-0000000DLuW-42yw
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 09:18:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68M5Zf5f3539770
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 09:18:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XKotZtMS7ewKcsV6iJ09kjS/
	F3R0guDpSO4Eq1SOvq4=; b=O19lbRdH/itxZvGtSA8IL73kRkl2nvs+YbsiRnuy
	EGRjefwsJ2ML/300gL+cpQxQX3O1bNw+7gho1CvCGEbu5L/z/vjeVEGGMiPY5Xts
	EeVw9CyPcDkUUIFNNYd0smVh0kO0kCVT2rVYQZRKkmJdfBpFBBGUBHcEe5C2/D9i
	qJqE57fr6MsBrDYsjZVnkLgMMN4JCW9rRREuvl4Elf2pM2AAiEPbj93zapYYpXpq
	dvYNMZbxa4MUtZ+3HPNlFJdygIn3oz6vn5aEHywqk8xK0qwPlACv720ZzSBODi40
	fyRPhYC4afTzukbvXhoViXgPpWVGqCCaQAlM0cpo37oaHQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gujkj94cu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 09:18:39 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc4afc810bfso709254a12.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 02:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790068718; x=1790673518; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XKotZtMS7ewKcsV6iJ09kjS/F3R0guDpSO4Eq1SOvq4=;
        b=KgWRMwC6xt2oWLdBdRv6Oi3snJ2y6nDF6tYc0XgeEnJQ5Nb3fOkSzAtUCtecUPMWc2
         88mytu1hjEwoMBU5mMbufcGo26ku72borpspEP3iddiz98w4Zq1l2moJz8agj4WA5LBw
         GEpmmLHrUDftQJqHEJFZnebMScvDpZDEzPk/uGLbzOuZBXyw+NKIK7ctscXRE1TzBg6G
         KeHcgYU0p79Z+qQ9Ozh6oS2o14GbvVaqQ7SL3ardEES14H+i8qasyogEmTB0fz1LTxAD
         clVCzICDjjJ4iYCYu0AGDBxCLV9tfzE5OlGHsuOYs4t5p5y+jB9/+w81yz+HxX3g3ZGY
         GUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790068718; x=1790673518;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XKotZtMS7ewKcsV6iJ09kjS/F3R0guDpSO4Eq1SOvq4=;
        b=SKTahUa3r1CPtXcV4uRwZUULNcdUiaOD5lergt/nmlTNnlgSGdxw45DRPygQAODT37
         +sEjhqdDvICPDqJEuYrCQSYQXldkh1NQGK+wFYJ+NBV9G11eWoIMTh90BjInk9YPDDFo
         Gef+D4rS8aUcxzNBPeBmhDZo6Xh44Npq2/Orucz30FjcBN6wgCiDX3InY2pIIGFXdFJL
         GRW7ahQmCH8qnwe0s+W4G5gbtLJ6IBDn96pzOtqNv3abRC+bFzR1vr1ohgKaKH+AYAWx
         JPm6Qxj9Pet/DIoqDkGnKYmsS41JfWjOV9H4Vng8IHHokfmNC6bl8CiCpNu41Ck3fOgB
         vSmQ==
X-Forwarded-Encrypted: i=1; AKwUvBxLchCQZMcS4W8LXXOF3j4I0V/bqB+JKDocEoQCuM6SgyAA/Eq3lgqV8Bj7Bv18J1rASI6XicN2G+E=@lists.infradead.org
X-Gm-Message-State: AFuF++m2BK5dJ0GntSeachYNeQ40Krgz5xu6tk/x4o48QJBfoGyo9DPg
	ALq2+BQipYSTkmGiY/BWJdDJfM7x9Vz4HA6DNzEAjEP9LWGTBLotPnwiOTTGT0+387FY9TRGMVB
	CsfpvNOBu5HYnG4BRJFpPahNncMR46caxgx8XtvcKjrexNLhiFrVaUatBaafHJsljI0gZ
X-Gm-Gg: AYBFou1p6gt/VXuZVJDLYXTdLpA9G/MFjO2Y6pvHjIoWO2TmAbeaJAVYo+eJUKem+Sd
	KPC19WEo9UryN1X8YrzvR1sIRh7scPiYs+hVMsRyB+syqCztruk6deZyixr/Fu26pY/+Wcb0H4B
	GpZ6K19Z40ZOtR0Y5QrhwncmABWbvIOxpye1ApVGF4s1dziFQJxqs0rG5UEU92O+S3Kl8lVMFqa
	dqphA5Qkkf+w4V1MLY3S4BOtnW10yClXIjtUUPd0AHCZJwzz39vtBe454pvoaD8LVmKLMN2DviM
	vxGW9EQchCvwr6A3Q3119BXQwPlVF5XhZkIsyvV9+WeJRcm4LE8v+g/NTXZaMeaYJO8lwjwVPmS
	aVYLAGn648QoLuyLGxcZcGz2MyBkq1kmjtS+s7x2EjnOqFLk=
X-Received: by 2002:a17:90b:554b:b0:3a0:5c17:642d with SMTP id 98e67ed59e1d1-3a07326e7acmr483726a91.52.1790068718390;
        Tue, 22 Sep 2026 02:18:38 -0700 (PDT)
X-Received: by 2002:a17:90b:554b:b0:3a0:5c17:642d with SMTP id 98e67ed59e1d1-3a07326e7acmr483681a91.52.1790068717620;
        Tue, 22 Sep 2026 02:18:37 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e610e786dsm4762429eec.1.2026.09.22.02.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 02:18:37 -0700 (PDT)
Date: Tue, 22 Sep 2026 02:18:35 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, shengchao.guo@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/6] Add PCIe support for Qualcomm Nord platform
Message-ID: <arJH64UqwPYfg5c+@hu-qianyu-lv.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <arDPABIQl9wKYVKa@hu-qianyu-lv.qualcomm.com>
 <dfad8320-5a92-4398-83bd-3e796faa24a1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dfad8320-5a92-4398-83bd-3e796faa24a1@oss.qualcomm.com>
X-Proofpoint-GUID: USI0MGI9Zhor77eroS-5bYr7tO92NFiI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIyMDEzMyBTYWx0ZWRfX+CTbBC1vqMk5
 jCtdkbg+TRq6lGWpa43YZ+c+k3TwWe/HMO2bePxEZKCg12R6NNZEFckyo3DuhFUmqhihcENdMoG
 1x4JgNkJYqyMDzi/fEXzT32ON1MMdOAonZBci+tMn1HnkhfhYiGvmxPvgtc4muEiBuDsDx3n4dq
 K6KD8hkHQtGgKI4BxWDAdWGEfAGG++cIFbf3Pbn+AyOpqHeyCQPjN/j6DbPmo4yk4SVmRGG80Qg
 cOBhYxhHmdqOaghT9BvwpXocrf+GKrQwhLkO7XXSYLFyAyiaM+wOyqx4EVnqNKM3L02mcaIVVUC
 oLYxfPlDim3AU0WWggnxPxZy7xDbldGbxmM5n76j8TtrATfAr4BLywAwfNELxbanMSjmCQmAcBu
 GtrvihGf947yUyDQOXdF1lTyMpkWAoNoE1vzK3v2dFmEgmv4HKgnUTp+bLfitxmiMraatidm9yu
 Bwb1AbQOwgpm4oeEBSA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIyMDEzMyBTYWx0ZWRfXxZje9ch6u26A
 x96ZeEko7KX3MMDBumfv3kiR+2wlf0X1hCQb5bS324ei3aw3cg+5pKqbFrq9FrE94cADdGmR6+I
 Sb6MlBGU29828X19FvWp+qiH82LxE4I=
X-Authority-Analysis: v=2.4 cv=SuAFe/O0 c=1 sm=1 tr=0 ts=6ab247ef cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=LSDu2nEps--MNvHFjqkA:9 a=CjuIK1q_8ugA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: USI0MGI9Zhor77eroS-5bYr7tO92NFiI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_07,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609220133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_101843_531690_37FFDD37 
X-CRM114-Status: GOOD (  21.99  )
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

On Mon, Sep 21, 2026 at 09:37:10AM +0200, Konrad Dybcio wrote:
> On 9/21/26 8:30 AM, Qiang Yu wrote:
> > On Mon, Sep 21, 2026 at 11:07:08AM +0530, Krishna Chaitanya Chundru wrote:
> >> This series adds PCIe support for the Qualcomm Nord (SA8797P) platform.
> >>
> >> Nord has a single Gen5-capable QMP PCIe PHY block split into four
> >> independently-clocked and independently-resettable ports (A/B/C/D).
> >> Firmware selects the active lane topology at boot via a TCSR
> >> configuration register, and the same PHY block can appear as a single
> >> x16 port, x8+x8, x8+x4+x4, or x8+x4+x2+x2 depending on that mode. This
> >> is similar in spirit to the Glymur multi-PHY support already posted,
> >> except Nord's PHY registers are programmed by Linux rather than by
> >> firmware, so this series adds the PLL, TXRXZ, PCS and PCS-lane init
> >> tables along with the power-up/power-down/soft-reset sequencing needed
> >> to bring each port up.
> >>
> >> The series also documents and wires up the qcom,nord-pcie compatible
> >> (reusing the existing SA8775P PCIe controller binding), and adds a
> >> CORE_CLK_CGC_DIS/AUX_PWR_DET workaround required to avoid a timing
> >> convergence issue in the PCIe power domain.
> >>
> >> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > 
> > Tested on Glymur CRD and Glymur QCB, devices can be enumerated.
> 
> A test of "this didn't break my completely different board" is
> welcome, but looks a little confusing without you saying that
> was the intent specifically - unless maybe it wasn't?
>

Yes, I only confirmed that there is no regression on Glymur.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
