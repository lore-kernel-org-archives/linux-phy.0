Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB8AC982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vx69OEHQD9O2DuHQa9jw2fIIVqQHHWnxVqgdIMxPUE0=; b=R2/c4Wu/R8sXsk
	2Mu3wnuZiF0lMIJr/WTITd4pd4akoV99keq2NsipbsVD+d9C4ql4sGQHDSIEzj82yt2ZBu+K7LsIS
	ouqSEIxxzUybwmPPGqtmIlpv9t9ra3Z+ys4GQbQ8D2DIxpSIsA874O4QQdSUCovXpn2wJpw8xwo8t
	sXA82VJDd64vxWaJzkAdijNTH3hi+D27C7CrKfr2QDAty4vefKKMBThWZ3rTHLDyOBBIN/3B1V63g
	IrUExPokla0Dr3D6mLpyYua1sMgqqZwDBWe55aCzcKDhGBwsD/N6vEiYtZkKER0vvTD4Ch3t+v0XC
	MjJJ2lnOY3eE6Kc82Seg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjz-00000001njO-1yJp;
	Mon, 21 Sep 2026 10:59:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjy-00000001nhO-3wqI
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 10:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=tGAVhDoa+/o8/9WqrqkGlwFP2r5vvltUvLwZDgbxems=; b=B9yH196mTt7Ov8tp6oC5mQ7Mue
	n0jT6eBalot+tK+aZKUOxrV1no+dGp7wUGd9FaykYTBEc6JeOVJ4w6ipM6x78umNCrtRodHukaW3R
	dPGaSsir4SObG3hK7hKNLVaQM5XaIfQNUmtv/ftwuqK7JgySQDFrKUtLXXpSdKv5SeUcEGOW9johO
	q5mXZysje1FAHi7LEaocmZr/73WxVWFtv/WWTotACwA3qJMw5CAHrXtI44rkrCTYkidKcrX0I7x5Y
	QYEE2/P+kcAO9DbKggAzITF74thtGjB7j7TSxWYjMrUmLt9RG/4o2Se1tDCEGmgLjrjl6R6dOIwhN
	1rZLr4gw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8bjj-0000000C9kV-41Ol
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:59:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAe1EV1563557
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:59:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tGAVhDoa+/o8/9WqrqkGlwFP2r5vvltUvLwZDgbxems=; b=oFlx1ty852IYEhOI
	BSfnRhvKHbTQHhpCH3rL+1egLetGNfkrS81jGEVqr05xQe6qqCEH6fq/gIyFk/nz
	1MVjwSIKP9FqYrNXGmpq9olqSraP+y98aNzzALlBuhT9JS+M48RGW1JT0iNvdike
	lykq6JqPfjecxOCHudOtAT/D0gVXL8bnwZrJBEGIluk5s/8WAfAXSsJb0At6RARH
	GxM6+GUSVnrYYg3g1zM4RFI++X+qZT6ZnHvz673NzDHcuHbV3ylNImPzq7/65dQi
	TJ5ZAlBViyT69VfjxFcon4jHEQHfAgDEWvGMLFxIb34xWvXfxuAW012KqxAfxzUT
	BmCrwA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtysw0x6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:59:02 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-385d2703b64so4139076a91.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988341; x=1790593141; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tGAVhDoa+/o8/9WqrqkGlwFP2r5vvltUvLwZDgbxems=;
        b=WIDXE3Hc/ui/98ktP0Rf9vjpS1CinI5m2Ey02PsmWDH33BNZSyEckHOxp6JteI3asa
         ySCDkGCkutVUH8OfvinZkEkI2KYpnr4VRMtlM7va+IKp1FCkxjt6I1PeDjyI+i4hngwb
         XA/P72o7vIPPof2k6UmPrcNyVABgeRZAtCq6NjYSNf+gRS3cmKd1kVQ/L+5h79EIwwQv
         mPMsEAkawNYzOHhUPg+gUwnPypwrWlWDROlu33yM7x6nYLN3uE7KMZmomFkCXAODJ4y7
         8P4GHQ3I3tST+mluoZqBx1aZvM6qmdN54z+2lVXg32I+JF0Nlxa9Aq0RHjkLcnpzJtFU
         nrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988341; x=1790593141;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tGAVhDoa+/o8/9WqrqkGlwFP2r5vvltUvLwZDgbxems=;
        b=aOTWawe8iscJm0yZL61swr452jdiDhbJnW6uxeIEVFKvP+TIGqltddMCWZ98H/3DvT
         1sjPrF2iE8bFC9T0AMReyZD5/7s5zmSsDcOd71VC8OGzqWOzGKU+HxkKdSg8lYDN5O57
         i1OWAqLFeTX3wI9wWat9uTMe0KAPFO4V/9gfViSgvhjVx4z+YrnWyjTesGCiyn+ulDVa
         EFeqvUlF1Y73D3HY8HQaWJVt07G9vVAhm8/KUwVi/wQeRJaJ+6eFNguXH0ugPNxFbtKo
         Bc7zBgapXxiO1iQ6SMAOvWjoKNnIYXfuAr1uoQQSrCcoXEr6HW8N2CYXM862ExA6Wm+e
         mwBQ==
X-Forwarded-Encrypted: i=1; AKwUvBzKVaWawkLJDsZ1qJ0+x6KZJVHjPySf+Kf7tbwo6sDBS8u+wRZWj9OHJ4D/hTgdnmlVqODpUOjHIXI=@lists.infradead.org
X-Gm-Message-State: AFuF++k8ost27TmSxQrz0HNC04Sw3J00L08KHH0MjI4AQvZFPWUyqzS0
	DBPWq0pz/IiLfFhzZ4wF2NqwfvDJdR/+V8CshyiU9Zbxu+okv/qGF+fcPqyZuinXT+74ReSKxgm
	woZbEomVYDMxVx7NZcnalzs/TrTEVMo9ii2mL9Npz8STkbSnwbKzgT5fyNdNcRIkJ39v1
X-Gm-Gg: AYBFou39M4gfPdDj/dQVeVqgTCyRoE5WP7s7M1RjsfkLslFAg5POlSZNTZmYlXgQn2B
	727kU29ZC9adqrZ2FLT5WjJgXOtq1RcUqLXz/eFCM5RTZ/Ak74xDrDGaVH65axs6mW3B+UYsIN/
	iRuI3csSI/Ug0olafeOFQw8xSajlIo8oYkxGctZx7oxN8yg59CfO8snkd6skaOCmjPRVWqv63yI
	CY0B3G8zhynWTrTvei54X1ybCl23BuTd7qOrdu6uzOE0Cteh7y1Vax+LXh2hR1iYejXKUCVVqXm
	Uhhth+a8flgcpZOTfv8pq7QqDieZIjIl8QHDYE8hEzLZJZYsjm3yjMPbxRor7yHnhaOYtfeW4cS
	Tybnn7oM9pQjeI5UfF6acexRkndQzVTdcnw==
X-Received: by 2002:a17:90b:1347:b0:39e:6c68:fd8e with SMTP id 98e67ed59e1d1-39e6c68ff44mr6442018a91.35.1789988341059;
        Mon, 21 Sep 2026 03:59:01 -0700 (PDT)
X-Received: by 2002:a17:90b:1347:b0:39e:6c68:fd8e with SMTP id 98e67ed59e1d1-39e6c68ff44mr6441993a91.35.1789988340585;
        Mon, 21 Sep 2026 03:59:00 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:59:00 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 16:28:16 +0530
Subject: [PATCH 5/6] arm64: qcom: monaco: Fix pcie1_phy compatible to list
 qcs8300 first
MIME-Version: 1.0
Message-Id: <20260921-monaco_ep-v1-5-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=1098;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=WbRARIO1/TWwRAYkZ98IWSIfbhjomj6AvqrXUdfyKts=;
 b=EQq+urTQpBW0hMMCDp1Dku9OvNG2uaQYe18LjursrmvHtoLDUxaDE7QKX952o2fYut7NZXn6n
 sU6PgULGsKbA994AEH50YhlNqkJ2k2wqTzLWaNSQxbexbmcUHSvW0bl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX3yChBT7dy0dx
 JSBTES1aC3OCn9Y/8TuCy1gJ+833rKGS0o3UMlhs9far9ruhBEAniRyfsWCH03EnNSI1eC64izm
 CFEqwjyE8XDAwbC0ocD0QW4d0z43++zyg9MBiWb9uC8sjMEoaeTHAtqZ460nU3thnHCxS1giWUO
 IcMGBiAx8ACA5ouhRg0OZAY5SH24gI6KNlS+8VZSKJadV827ZLxFwvsnh1HwzjhsA5tPvL0ibp6
 tXqThWfKBVzh8CntJ31HB7kElmmLwzDSKT/T+OQTeo/YV0IC1e706Hftk4BkxsCdcAEA6oBdxLo
 1jhYwEVkoMCg++OxhoZB57vrCfdHcKJbnnoa8FJisZ2jgoWRbsVRQBdNcZPlWHm5JReb7RrS2vA
 BOfKq3YQOHcKM73UP3Z3nD+swWCOn+iixNt7s/bTLdLvWQXKzDDVmmJH73TvkovFZkkHLc+QfZ9
 PiSvFW5n//RraMvzByw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX5lh66xm1oP7e
 Ob6qDuL7Z4H5PWo2tE8SyU4N7wR+pyWJWuxKd4ns6knQTW9nkz2WNqiLY2CeB7K0bjRPU+ZomwH
 7NvAysADaCm4rXz8SfHjZ8twYp+4vH8=
X-Proofpoint-ORIG-GUID: f9jltw-eQN5jDo_0zvd9ve-AFkAw3q86
X-Proofpoint-GUID: f9jltw-eQN5jDo_0zvd9ve-AFkAw3q86
X-Authority-Analysis: v=2.4 cv=W7etxhWk c=1 sm=1 tr=0 ts=6ab10df6 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=_k9ig2nQFDp-gxZIyLcA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_115904_616584_01109C58 
X-CRM114-Status: GOOD (  12.36  )
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

The existing pcie1_phy node only listed qcom,sa8775p-qmp-gen4x4-pcie-phy
compatible, since no QCS8300-specific compatible was documented for this
PHY at the time.

Now that qcom,qcs8300-qmp-gen4x4-pcie-phy is documented, list it first
with qcom,sa8775p-qmp-gen4x4-pcie-phy as its fallback, matching the
order used by the pcie0_ep and pcie1_ep nodes.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index cfe39f923224..d7d135e87a8c 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2597,7 +2597,8 @@ pcieport1: pcie@0 {
 		};
 
 		pcie1_phy: phy@1c14000 {
-			compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
+			compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
+				     "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 			reg = <0x0 0x01c14000 0x0 0x4000>;
 
 			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
