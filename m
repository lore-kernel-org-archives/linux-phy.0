Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 008FDEF36E1
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 06:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufUmisLV5boDLBM6lS5T2plAXkqXM767dUMNXhKWxYA=; b=FHebVyPYcFJno5
	eenX3nMJ/vbtWIgy3FRFCoP8m1C1d36FlVzFWZXhPNn+NHldgjcyAb5NpsvIIXzwcZ86ZyV+l2WLC
	jt74j+PArsVV79bx9lfPG17GpTkPOS0cACM1zA5Q4TEBRCGr/qaSThABp9x49zpw/v2RJqPjKITyY
	pNRxqybLe2F9athYtebZErcBpzdopl7fdHKkcCFYQC8YAyJG1Z19EY1W/5XeGlX08VgIlfif4jdZ2
	4D4MAqjlfV4cXhcHvoXbwbaf4w2XWzbn23VnX0jnxhMVcsiM/2tliferHX0voUzfpWY2pnk3M8sTr
	4zXzCJnb6TRLXWBXDV5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzTrq-00000006iPA-1pf7;
	Mon, 09 Mar 2026 06:13:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzTrn-00000006iOp-3h5X
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 06:13:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628NjPqv118856
	for <linux-phy@lists.infradead.org>; Mon, 9 Mar 2026 06:13:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uik8PKSTrs9X48gkBNE0kt0a
	/VsJjkEh2LT70pMKrCY=; b=g39Y4S4kiB2QQ08sitLp+PcDwK/z3WoVUTym+W6B
	kkbeDD7J1JOauEVnEI758UoGIlZlTl1C8J8kwVIf4eZHjaNF0d8YuK4Jwgdpdk4A
	1U1VH1qHaIE7Vsji22xA+/EdAX6eLoP/q88TkDiMDdHOqhmEDUtwhZxLDdE+yaQL
	af/mcno/I8mJAqw5qKdMhGe8mxn9JLd80ysX+ueaCKuu9jjYs/Jkjp7TuzdTO2eV
	/gUbBkt5NRjcvEZ29ZsUjT2qWIWUfo2uY9jUsTtusU3V3I1uiJ7MDFGvIi9YPsWh
	jLRrOxgnHGmpsTnngQSQi27TYvAvO9Z/WUuE9Kc2A16BHg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crd6fc0ex-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 06:13:22 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bdf6fe90a9so10489011eec.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Mar 2026 23:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773036802; x=1773641602; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uik8PKSTrs9X48gkBNE0kt0a/VsJjkEh2LT70pMKrCY=;
        b=W3KWpmSuW5RnD1x/vSb70PV7e/0/fdv8EG5P+OTTflEDMmC5OiWxvE281G3DhgsgwT
         eAZxgCnBCaJi1EEYwk1K4d8KwLJ5dkT+IlTti/mBydqk9WRSELID+2R9dXNG2rH+SV3Y
         Y+XplXm2FVPAZZ0rlY2g8AuYTG6sI7gdoYZ2lod/yiEa4D+fkiDbwVHMSdfVa2BF4Aht
         g6Y24p3OYipeuQFjBuuQbHtWxwwkAq4YpOlAhqwnZmj5bme+3yFbiT8mvQ1Izg9kO5X9
         kcR37Fz/7hfvVY6C60yAiSA+1MPfFd19KjQ9sBajX5DECeWG8k6P7S+B81aP2GQkPYyz
         3JKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773036802; x=1773641602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uik8PKSTrs9X48gkBNE0kt0a/VsJjkEh2LT70pMKrCY=;
        b=RhZrUF393TU0gpB8w0agcfnd507hcQ9Wb30UZK7pAv0VlWo+u4KDHQWUk4FP7CPcR2
         hwr5ipc7GL45p7O+VxCTU6ATzAtIxpnAOeaVUFbgHsxr8avkqeZTiGTRmCZF1hpvAeg4
         8ZnY3dFCr60PuMMehQKSLy4VNtF3YG9pn2inojpShKvez1e3+5EnvMOtMuvHNpjSVlXT
         WmgJLe19jEf78m6e5SsCn6XdH6HU8lC31mTUSfRCfPhujvC+gtpmBcIppRt/HOLdXLWU
         U4OuKWOjHKWrNaON5yxr/xpsBDJaAZ01UHORwvOZVE12tTz9zUHpwnn5rtmAoYDWQXc6
         H18w==
X-Forwarded-Encrypted: i=1; AJvYcCVKqD8kpLfvbgfJD11lMWWlQIsMKwt7gv27Rsk5ShkWKjMFm0Q7MkyUv8UDAZPjJCwaLpB942i1QIU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlQVO69n8XAxWL/Si+ZSxlHtOUFlSyrThkAf6yYFMAnCFg/4+N
	n4cX22DnpdnzjDAESKY+BptzkKKPXm1cF6QBdc8Hl6kx2GdBXiTCGWUg9oB/Xu0nIHEbFBsBSn+
	GQQiR4RfTRks00eXnulPUH5ppnbLLBawnN5Kw1GpKTwaCIURlbrx13mrItKF36l3I6fuc
X-Gm-Gg: ATEYQzycmakfLtC7u/sIc7dpzpT0pZBiQnyc1NmxMV66U5QsfWilgMV7g1WodSjG3gZ
	qV/sImTMNZJ8cVpulEnMKpaAQIo3s9x9thP2NB+p6xif5YtzcqwWeb7g81O/SXJmaJ3U045PYX+
	iBPmjt7vCzKIDAwPkFHFrIVX8jucUcFoeKUq/FFdF8+Ky9mL3X7YOICpeO356ajzKGJWyaviZnP
	Moa2k6xLOpl/6cnl8B8WYQB61SYnu2FD4+QOBTnAWZaNjV2xlCFRdTgWLuhuUTv6jnRfsy1tYEG
	1K2gbqmto41n6++T7MkhlOQ/L5/+9eKeNQMl94l3oqtVkdH376gex+AlYuET8jtCBMpGUlp82Dz
	dORpMFDWiYrUl/YKy1/gl6p0R9y75aR37Z1YXvaxlZ3eeP5+GJYiPVPLnvZdFtaW29Lc4
X-Received: by 2002:a05:693c:60d3:b0:2be:142f:d481 with SMTP id 5a478bee46e88-2be4e03ea2bmr2842693eec.32.1773036800959;
        Sun, 08 Mar 2026 23:13:20 -0700 (PDT)
X-Received: by 2002:a05:693c:60d3:b0:2be:142f:d481 with SMTP id 5a478bee46e88-2be4e03ea2bmr2842682eec.32.1773036800377;
        Sun, 08 Mar 2026 23:13:20 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f8078c6sm9451943eec.5.2026.03.08.23.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:13:20 -0700 (PDT)
Date: Sun, 8 Mar 2026 23:13:18 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane
 bifurcation support for Glymur
Message-ID: <aa5k/tBs3vGXE0uY@hu-qianyu-lv.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
 <aaqdv7Zx5AODzg6P@hu-qianyu-lv.qualcomm.com>
 <fb75023e-8fac-49c1-a8b7-2eb8b70fda3e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb75023e-8fac-49c1-a8b7-2eb8b70fda3e@linaro.org>
X-Proofpoint-ORIG-GUID: xNAOCiW5Ho7YYgj0poSoXk2hdwAJsAeR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA1NSBTYWx0ZWRfX4H4wZ3CzSzOs
 0k0Z1mzK4NQkBIeyNxI0rbtNuuowLcgrI4H9tJy/eGS1do0wxrEjfTya4E4fvBLX+/XXOxOseT+
 F597kbTJcrt5FNjUqcU7fTG6UYJqFBbsa3cjeUm96n2IQHVMa0+Xg+/YEgdck0OoKhbtnkEpsv8
 0B47F/gPPWmBU1jcRPffWXbgMEhipki8yw3TgwCKQZq/zgPiASOyIlM/EKJP3fdkVE4pUQRgS0q
 lS7aKcTaEhrHt3Iv6bvRg9CewKVfoA3RImq8Vv10vbyp8IL+Bd5ouXlZKu2iTfOEntchsdGuKdP
 SjW4tgBDp1n9ZK1g66wckjJ/3pqYp+AvQUp+8gSYxLc/S+iwtHY8X6vYUnjzBy+F9suU/iVglkk
 IIUP+LvqnrowrahlUus/YcPorC9axSjoTkyKQFS2zSF5jw7NB3/0WndClv80xFNrCeh6IRlmZp9
 ya9qVFJ7ZyoJuEQtA4A==
X-Proofpoint-GUID: xNAOCiW5Ho7YYgj0poSoXk2hdwAJsAeR
X-Authority-Analysis: v=2.4 cv=RP++3oi+ c=1 sm=1 tr=0 ts=69ae6502 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=O2xUQfZD2m46tlq_ZQMA:9 a=CjuIK1q_8ugA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_231323_947841_9C127351 
X-CRM114-Status: GOOD (  33.38  )
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

On Fri, Mar 06, 2026 at 11:34:37AM +0100, Neil Armstrong wrote:
> On 3/6/26 10:26, Qiang Yu wrote:
> > On Thu, Mar 05, 2026 at 10:14:05AM +0100, Konrad Dybcio wrote:
> > > On 3/4/26 9:21 AM, Qiang Yu wrote:
> > > > This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
> > > > the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
> > > > acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
> > > > Gen5 interface.
> > > > 
> > > > To support 8-lanes mode, this patch series add multiple power domain and
> > > > multi nocsr reset infrastructure as the hardware programming guide
> > > > specifies a strict initialization sequence for bifurcation mode that
> > > > requires coordinated multi-PHY resource management:
> > > > 
> > > > 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
> > > > 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
> > > > 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
> > > > 4. Poll for PHY ready status
> > > 
> > > I think we never concluded the discussion where I suggested the
> > > bifurcated PHY may be better expressed as a single node with
> > > #phy-cells = <1>, removing the need for duplicated resource references
> 
> DT requires strict hardware description, no abstraction for HW, so if there's
> 2 PHYs, then add 2 separate phys and reference them from the PCie controller.
> 
> On platforms where you want 2x4, then add 2 pcie_ports using 2 phys, on platforms
> with 1x8 a single pcie_port with 2 phys.

For 1x8 mode, we can't add a single pcie_port with 2 phys. I have to treat
3a_phy and 3b_phy as a single device because of HPG init sequence
requirement:

1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock.
4. Poll for PHY ready status

For X1E80100 PCIe6a, we also added a single phy node for 1x4 mode.

- Qiang Yu
> 
> Neil
> 
> > > 
> > I understand your suggestion would look like below. I agree that the
> > unified PHY approach being more elegant from a device tree perspective,
> > provide better DT flexibility and eliminate the need for different
> > compatibles and dupicated resources between 1x8 and 2x4 modes.
> > 
> > However, this will include implementation complexity to phy driver.
> > The driver would need conditional logic to selectively enable different
> > clocks/resets based on the PHY parameter and maintain mode-specific
> > resource arrays. There's also the issue that assigned-clocks
> > GCC_PCIE_3A_PHY_RCHNG_CLK and GCC_PCIE_3B_PHY_RCHNG_CLK will be set before
> > probe no matter which mode is used, even though in 1x8 mode or only one of
> > them is actually needed. For pipe clock outputs, only pcie3a_pipe_clk would
> > be needed in 1x8 mode while pcie3b_pipe_clk would be unused. For
> > powerdomain, we also need to add additional logic to attach and turn
> > on/off them.
> > 
> > While these challenges could be resolved, I'm not sure the benefits
> > justify the added complexity.
> > 
> > pcie3_unified_phy {
> >      compatible = "qcom,glymur-qmp-gen5-pcie-phy";
> >      reg = <0 0x00f00000 0 0x10000>, <0 0x00f10000 0 0x10000>;  /* Both PHY ranges */
> > 
> >      clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
> >               <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
> >               <&tcsr TCSR_PCIE_3_CLKREF_EN>,
> >               <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
> >               <&gcc GCC_PCIE_3A_PIPE_CLK>,
> >               <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
> >               <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
> >               <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
> >               <&gcc GCC_PCIE_3B_PIPE_CLK>,
> >               <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;
> > 
> >      power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
> >                      <&gcc GCC_PCIE_3B_PHY_GDSC>;
> > 
> >      resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
> >               <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
> >               <&gcc GCC_PCIE_3B_PHY_BCR>,
> >               <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
> > 
> > 	#clock-cells = <1>;
> >      clock-output-names = "pcie3a_pipe_clk", "pcie3b_pipe_clk";
> >      assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
> >                        <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
> >      assigned-clock-rates = <100000000>, <100000000>;
> > 
> >      #phy-cells = <1>;  /* Parameter: 0=PHY_A, 1=PHY_B, 2=UNIFIED_8LANE */
> > };
> > 
> > For 2x4 mode (independent 4-lane PHYs):
> > &pcie3a {
> >      phys = <&pcie3_unified_phy PHY_A>;  /* PHY A only */
> >      status = "okay";
> > };
> > 
> > &pcie3b {
> >      phys = <&pcie3_unified_phy PHY_B>;  /* PHY B only */
> >      status = "okay";
> > };
> > 
> > For 1x8 mode (unified 8-lane PHY):
> > 
> > &pcie3a {
> >      phys = <&pcie3_unified_phy PHY_AB>;
> >      num-lanes = <8>;
> >      status = "okay";
> > };
> > 
> > &pcie3b {
> >      status = "disabled";
> > };
> > 
> > - Qiang Yu
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
