Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E198F01812
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 09:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDv0Qp6BverybgU0uDOrVVqXinWCyI4Os3PK7OVV2g4=; b=atk2d6sKXxwwfo
	77szA5wByL2UAJzqo+a3QBiPgONFERRa6rYSyyfAyPFOJSyCRKZAmCO0N32DIV/SdWxwv3P4+KD+Y
	LS1d2yLZJ5vN2VO2IJhvzrguI7n85/X1DiHHxCtz/jTm47MtIx305IZcm9zp6wmdLYOGL90j4MvDh
	j7/WFFdxMn3b64xj4q81FfE3v0bWcuC4gfs8VzrJduR+A0mYZqiAFTZtZ+b30FqzSnrYaO9g5Qb71
	h5tHmigULRM5Xy4pzQA5UIADAwFgJsJXLS7jYdc5O9pnfE/hvzcyRlgYWEkzgC8vaZKUOEw6BEYdI
	GCVNNtcAlgBm3DuecDWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyRS4-00000003LWV-28QS;
	Fri, 06 Mar 2026 09:26:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyRS1-00000003LVx-2Iru
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 09:26:30 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6269P0651162835
	for <linux-phy@lists.infradead.org>; Fri, 6 Mar 2026 09:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g9VGYfsml8rKqyXhc2CCewWm
	JFPq2+7E+oiIvjA17Xs=; b=XvFbGcaF99afGPblZDnMPe+e20y+n/j+SkT74IYi
	lln42UdAvgfOgXsSbZ6u7WffP2LNkCFGzxPb2ZgaXUsJLzsoEgYDSldN7P47F3hx
	ulWxTm6JaKnK3ti2Kk7QrhPbLy7UFPU1IYYrG3KdOVxGivKwYvphwFgAAmnpTwi6
	RG03NAyMwDglGqvCWX4apKJFp+NPUvqE3+mvmrtAQ9sxy8g9lggsG0h+FWY9rV0B
	QxvFj8J2YvaxzN+9iTUeNYpkBn/AaMt40/xljTkCdNDidrGkxuL5hcqmjdYfnvKH
	OLf9eyD8d5S4orG9OimtFsAmAUL2f+R+yLC3teEXlD/2mA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv9ag060-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 09:26:27 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bdc1b30ac8so69866685eec.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 01:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772789186; x=1773393986; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g9VGYfsml8rKqyXhc2CCewWmJFPq2+7E+oiIvjA17Xs=;
        b=g0b4XkRdU+C2GBUoSYMLf6ABUxuYOVZAXgmbFHQm15EBb67oKBkXdaksKDKJB/T5rZ
         LtC/Lw1t4QlEL1f2ataS8yUeLny2wc/6cwF31sbt8Y0nmwgf5eUuMvctqpXZbQyfHRz/
         T0UqSjoi1g3KgIqyObI4ECMwVjyALxNxL/o9n/jYoUDAWCyzyJyIs5vjvRYldYBg+VrH
         DIs7mJHYPZXusdTvEJgy+W517d4cCoiMc7J6pHAobhGlkSbkDxRwwKqw6to+xl/ZJIbv
         JS1bGxa72PBiZq6SOV0dRkNubdAlVvb9F8M2qJCVKFMzoXHJ7T0p82QSA6PMJQGkwlcY
         apwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789186; x=1773393986;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g9VGYfsml8rKqyXhc2CCewWmJFPq2+7E+oiIvjA17Xs=;
        b=jhPWXw7zI55Zlowo/QBq55JPEvVpRaPfE14YXxj6MH4h39AmUvrdBgDnNGQOYV4FoQ
         ZhojzPezbN72sDXzAMWVlBYoBuysxCkIhUsr8hOWymNcPCtb0LysF2+GD4yOY/8Q62co
         MVJyPdv9ZzvFYl871NBhYNiBU0lSbxq4KLERvqC4Q1Lmv275doP7xQ8LW/N7k18X/dst
         OX70p5AN0+OGFMnziGzVTMum2LMFDRjskE2xnmKMZ9xd5hNw3NOVuy/0qYX2Fwlm53g9
         fOgKkMfAtnf0QDp2yK+QVHrGrw/twvF/HVJ1e1WsagVwV3lvWaWzotkWbENFbglnQhCV
         sFeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFROtX41HLjx76lFU9Q/akWsDB7Ap0e5g4UM9Ehq8Dqf+19NlpS9FxacUGBo2qjleJWe9S6G2jGQE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAWTClXbcoRFAJ/wVpXI8BmyB5Z4w72qHVlLD8JoUJJI/MHKm9
	FUsjAol6NkpETeVLFKWkTNEZ62pRYdDhkRmHtmFTDVVjKx2nXa+0SdGoMRWCNCwyIrCYRw9Iejb
	Nik0SlSHcahVEUELC8ReUwtF/sL5YfVhovs4cShyjAzo3AGa9KavuvZIB9ACht9U7r/ch04QWK+
	Og
X-Gm-Gg: ATEYQzzjne9jhck1RAPNONLxVL0brpBLCHFG6Ny2j7dINmvqR7YJLwo5Z2En3KHJG2B
	H5ZNTWSqG7zh841CiXMJQYgfjYx/5Cs6MFXjb/ES7+XOK2s0yYpCH6Dem5WFz8Js+Lx+VOpA2qZ
	8vVaf+rnO1fmZl5SdZY/iPY88XCTexRRlkAlB1JMrvybbIGcZFENkxgDFPBscXSMWp8pNPlBKmA
	0O4Rf8Lc/uMLl2mLZszxqjiVuT0W1Sd/IwWswwnJAYZ/2fyppYyX6Fwvq80bc2ZbjztRWLPlLY7
	VFDFsbpQ5a1b8UmLVukCGeI6si0Vu3mG2DyPkCMvD/6u9sitsRBYwEvugbux6wS4FFsuBfYCIUd
	z1zOYfaJ81JNS1/1CvIV+RNEN0M9FiJF6zZgTyGQ99O9ZiyDzvNLmqTQGiw68mTw35I0T
X-Received: by 2002:a05:7300:ed01:b0:2ba:a1f1:2879 with SMTP id 5a478bee46e88-2be4dfdd714mr611931eec.13.1772789186182;
        Fri, 06 Mar 2026 01:26:26 -0800 (PST)
X-Received: by 2002:a05:7300:ed01:b0:2ba:a1f1:2879 with SMTP id 5a478bee46e88-2be4dfdd714mr611922eec.13.1772789185594;
        Fri, 06 Mar 2026 01:26:25 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f96aec4sm857426eec.25.2026.03.06.01.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:26:25 -0800 (PST)
Date: Fri, 6 Mar 2026 01:26:23 -0800
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
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane
 bifurcation support for Glymur
Message-ID: <aaqdv7Zx5AODzg6P@hu-qianyu-lv.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
X-Proofpoint-GUID: lnYlGFomv6qMjfgQpIsi7BYGYhoO-rtU
X-Proofpoint-ORIG-GUID: lnYlGFomv6qMjfgQpIsi7BYGYhoO-rtU
X-Authority-Analysis: v=2.4 cv=G4wR0tk5 c=1 sm=1 tr=0 ts=69aa9dc3 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=1-162AUNTb8mUwbcPr4A:9 a=CjuIK1q_8ugA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4OSBTYWx0ZWRfX+yp2B71cW1vG
 wQ2FOE1+u3qEJx7+ie5+/ohnwHiB168jY+TyuPJVQ5JTiuUiHL+w1flPp9LD8RWVcVbqPSgui8P
 DGYRmNIk7eNOyntVWsKPBWhp4xgbLMwBLr67XiS4R1+4TuH8waDv1cc/YOSHfbZFrv8qxBOrpdT
 1jRKjP0O0nPNlFKodaDmkfuTCU4xzF87WLSoMUWySEbixGDGwk07W7ozox8k1Z6LLkfUvV/AlWh
 n4caJu8FFBatDFhXXLXyBj0LjPEmOUPgzk8lvkptiE45NMJH8aVl6kFIdSJY2HeHCfwvCTnUmXN
 cA9kWGGyhaMEOwfN+VwXrx21wbgXU1Fs4dJvZGZ8xNzGxc2RmuHGVhlNYA2rZxMVUyOXEtA0+Ed
 y6+4fyuFiTkRCwkGrg18slIUMCFp9oy7l3a79sOdwJftNtIvTqMbX3AOlLojCVJGJGVUFVlhMVf
 Q8UNuwUN1axbjNALQsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_012629_713951_48FDDCB5 
X-CRM114-Status: GOOD (  21.92  )
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

On Thu, Mar 05, 2026 at 10:14:05AM +0100, Konrad Dybcio wrote:
> On 3/4/26 9:21 AM, Qiang Yu wrote:
> > This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
> > the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
> > acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
> > Gen5 interface.
> > 
> > To support 8-lanes mode, this patch series add multiple power domain and
> > multi nocsr reset infrastructure as the hardware programming guide
> > specifies a strict initialization sequence for bifurcation mode that
> > requires coordinated multi-PHY resource management:
> > 
> > 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
> > 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
> > 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
> > 4. Poll for PHY ready status
> 
> I think we never concluded the discussion where I suggested the
> bifurcated PHY may be better expressed as a single node with
> #phy-cells = <1>, removing the need for duplicated resource references
>
I understand your suggestion would look like below. I agree that the
unified PHY approach being more elegant from a device tree perspective,
provide better DT flexibility and eliminate the need for different
compatibles and dupicated resources between 1x8 and 2x4 modes.

However, this will include implementation complexity to phy driver.
The driver would need conditional logic to selectively enable different
clocks/resets based on the PHY parameter and maintain mode-specific
resource arrays. There's also the issue that assigned-clocks
GCC_PCIE_3A_PHY_RCHNG_CLK and GCC_PCIE_3B_PHY_RCHNG_CLK will be set before
probe no matter which mode is used, even though in 1x8 mode or only one of
them is actually needed. For pipe clock outputs, only pcie3a_pipe_clk would
be needed in 1x8 mode while pcie3b_pipe_clk would be unused. For
powerdomain, we also need to add additional logic to attach and turn
on/off them.

While these challenges could be resolved, I'm not sure the benefits
justify the added complexity.

pcie3_unified_phy {
    compatible = "qcom,glymur-qmp-gen5-pcie-phy";
    reg = <0 0x00f00000 0 0x10000>, <0 0x00f10000 0 0x10000>;  /* Both PHY ranges */

    clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
             <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
             <&tcsr TCSR_PCIE_3_CLKREF_EN>,
             <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
             <&gcc GCC_PCIE_3A_PIPE_CLK>,
             <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
             <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
             <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
             <&gcc GCC_PCIE_3B_PIPE_CLK>,
             <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;

    power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
                    <&gcc GCC_PCIE_3B_PHY_GDSC>;

    resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
             <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
             <&gcc GCC_PCIE_3B_PHY_BCR>,
             <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;

	#clock-cells = <1>;
    clock-output-names = "pcie3a_pipe_clk", "pcie3b_pipe_clk";
    assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
                      <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
    assigned-clock-rates = <100000000>, <100000000>;

    #phy-cells = <1>;  /* Parameter: 0=PHY_A, 1=PHY_B, 2=UNIFIED_8LANE */
};

For 2x4 mode (independent 4-lane PHYs):
&pcie3a {
    phys = <&pcie3_unified_phy PHY_A>;  /* PHY A only */
    status = "okay";
};

&pcie3b {
    phys = <&pcie3_unified_phy PHY_B>;  /* PHY B only */
    status = "okay";
};

For 1x8 mode (unified 8-lane PHY):

&pcie3a {
    phys = <&pcie3_unified_phy PHY_AB>;
    num-lanes = <8>;
    status = "okay";
};

&pcie3b {
    status = "disabled";
};

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
