Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFAEBCCF2C1
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i+y53oMpalzHc6Rzg2rxDB4Bh4THimS3ABRTn29UETo=; b=BqT961KHrBzo7O
	s4gBE5g9C5/6Qnlbm8wpSX8EZDUsuj6+c5Bl8wvcn4Pznyyof5m6Z6pnhlRHdfpq27Wq7vgm6fgd1
	LWfUn9911dn4mzsq6gzCQ9nKRLgO3Hs7ZVxYxRqqXyKAahiPHp0EWLaOdGduuGlDZIXSNs7J598ds
	tkzwBgwT7Nnkqn3oJas57A3SYJJkA6RTVXr9nz6geGcZ8UDNVOGc6PhzgOGXT1I4HuE95OgHStPK4
	c3KzlLTnwQ0l8ZIZdEL1PJwGo24fGT+8SLKSBdLwr9KKVYpRvf50FoSiYRpvCZBSg3UB0jlonjsEx
	sBAmVFc2TBQlksd1w+mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlh-00000004DhV-2OGz;
	Fri, 16 Oct 2026 23:55:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlZ-00000004DdD-3qVq
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:16 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNFEKS3083003
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Da3JUHpl7sB4Q12CBYMw5Y+27TKx1gdrPHE
	G0KS3IG8=; b=XMeYHSjHTT4nmyTxjLcysq/slxcmS7qMBAB/X2saWbGn7SElRqm
	clKh+zG4ECntgZ5a5544sMm1+WpuPVeKXVGC6EXaklBknLZOlk+OhX1R0SqiWoK7
	i1TOBOfZhMkUAAubZ0Bn4fi4cXMG16A78HYB6G+VjvGlWj4ZqmyxsXtp2o6B3XPt
	gRZYOt0l8nRt1Jfc/l584tCfbJP71Vh4WTcft5e23FRQa2JQt58LwIaypFd+hv/K
	azZisbv4e3jWwKShIrRvKerpC6wrhM73cKPvJzai8f5XTIbHaVD+m1rpdP0ZEPju
	wKTzHwPsEv4LEXqzwWoODvN1453hbr6FVKw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbjmfamy5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:10 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3425098ae4bso2079012eec.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194904; x=1792799704; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Da3JUHpl7sB4Q12CBYMw5Y+27TKx1gdrPHEG0KS3IG8=;
        b=eeKahx4Fhp92FgJMuNApHZd0czLKgVbw31gnY46Z74aGpUVzcljdkJRApddVaTllKY
         Wmc1Y2lMQ4ymquUtsNHtfNJrWGFnqeGz6GgzHXSwpI1BNo8UG7fIqsL3jSUKlOxs3i++
         k296FuGrqN80W2SfAbKlb8rvDtY5H2dYZrJQXgBqfG1s3O3Cfnw6whaSjggzWlp1HRTr
         6wOJIiyoqNUCQmPZOVOWXp93kg7fcKinOXAtehxGss14xmhqXlI6qKlxHT9H3WRH/jgG
         b+c0SgYAXTbIhBCvYV8tsal6JyVpnbcBz/uSpyCwgOAU56/48A5okVHdZiZFvo0ADbCb
         eL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194904; x=1792799704;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Da3JUHpl7sB4Q12CBYMw5Y+27TKx1gdrPHEG0KS3IG8=;
        b=IGmgvSxwoErI1vNeVm3fo8W4mmGsc4B2W+bPid5ldp83G7BfHapBdLkw3u2tp890uk
         aQb+xIfRexXiFdd54rtyp2UWYdacJOZcq773eyvI1+iHkHColmNywh4+e/CMn3oKoq2Q
         q3SJIQXfeHslSpD7Ab3lPrlWuEc79QrHmh9+xCKvvE6/4MacIwDBZc3nkCnC0FIuaZjY
         e3zJNJFXUoOh9UVE4FLU+o55TOXEZVY9bzXsQc1nRYqWg52FPXIw3agdftB5AVMgnQJL
         2A+i/oH5zxIPyzqJJqDDYEOAYdxCJlNsdDt2H9VhfgGzmo8EBfqUGq5E/ixtX2xSZR1L
         LyBA==
X-Forwarded-Encrypted: i=1; AKwUvByBbNQAwU1TTIRPka/mTF3OiD//Wy/MLVb0EzSKeEl49MjMabrSqLGuaaqb/Tmaxz1M2gzDSKWwPLQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYJKq/+38Y0QyvEj9nMUO3aphiogjsmz9gGu7jpTw7nJVW8FMaQ8
	msHs2qtfgnjdB8hA4v/609IJz0N0BfUMtngq1ZuyPiG/SuVXi3mUpqpNKQxinZbJXWZcw1GMwQ4
	3MmEC64FaKl0gI9L+VYgD6EdcwshyCaskBdPWsEnICaWhM75yqZIxjb3sIO3JYpcvKnzA
X-Gm-Gg: AYBFou17z25CCJkRbfnUO9cgOqNKHuntAZe2cxNQFtm5ijT1nTd9i/L6Pzqzt4sTijT
	2HNbYNLBCND89iApg+nCEcLK+zH9FOYtVX8FKXtdiPNZo9bFLv/ESA+DQ+VfaM8k+Jzi1MeyrzK
	+B9iluNpzQLVUA7MLkeaaEz7ez3aC9qhAOiLOrZYSuQvdmwr+c45XBBlocquFy2ag1+yDEmzGBL
	nhmWFrLNS3Ri7bitZg1mFOjf9EgrGRgXRZvXMX2udeKuWHrJI/JPwnaROwWUfPnxKNej8KRZEAt
	hGr7aWx1/GxIs+I5KGkuaSrY1Z4OUqqFbBqWH2aGiqQYu+tMWvYlHeFQ1nF/8MCGkkjFb8Z0ScT
	tu3J7P1okycf2f8V/BoFvkl9Fql/DHYtQibkVjc419cFW/nxcQWxm9A==
X-Received: by 2002:a05:701b:220e:b0:159:d448:dd1c with SMTP id a92af1059eb24-1825a67565cmr5222846c88.19.1792194904266;
        Fri, 16 Oct 2026 16:55:04 -0700 (PDT)
X-Received: by 2002:a05:701b:220e:b0:159:d448:dd1c with SMTP id a92af1059eb24-1825a67565cmr5222800c88.19.1792194903624;
        Fri, 16 Oct 2026 16:55:03 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:03 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] phy: qcom-mipi-csi2: Add D-PHY support for sa8775p, qcs8300 and sc7280
Date: Fri, 16 Oct 2026 16:54:55 -0700
Message-Id: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: 4n2x08zk-eP_2q-nBSNezjUzEz0w19DW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfXyfdnCktYWHDX
 Rr5Npy6O2ywLOC2lOP8ytCXPECMF+XJVWwZXAJQEfpt/bfJap4KqbEG3WRNAPaTbd3QVRDKYy2o
 sRbI5FDzZJw8djrvAsFm7rI/MYFfelc=
X-Authority-Analysis: v=2.4 cv=SrAFe/O0 c=1 sm=1 tr=0 ts=6ad2b95e cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=3gKqbpTmytvcg6W9XpQA:9
 a=6Ab_bkdmUrQuMsNx7PHu:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4n2x08zk-eP_2q-nBSNezjUzEz0w19DW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX3ggtylSQMvvA
 Ba99rVQ7gtZNaddkVtDa6eakWFruT2rl+qKfLtTJ1SOl/dLQ1ZF8/8E6JNMuDzqcy0HCv9Cx3MB
 DeV5C+ojB6mYpoaKYeBXnZH2a4re677+EXh0/uo5eS8aJtoqURuFxTia+7KZaee4gY+Kv9x7MlK
 KolVlPHPIGUDgp/dKjzncO4RXO2KFeoU1nQilrE+B7Q+AoCDhCefsNQk5NdhQk0LnbM7+YYUhiO
 nvcv93rGDae23BdFGUL8A0t+K/vEAc0cPtwcep3zUMlptnL5Sexet0zOFXV37bZcxbBaSL8WFyd
 4TSJDbw+8eytpsUd5A/2/TXB78VYzqjZb5JsThkoBP5l9dFNvIhjD6GZHeGuWASxnr5cEzTrsyq
 zkvM48MY/TajCTH0haB6RgIxn3ROr3IqQQeUYswRfURGkWfVFVxHZKot4czX3k51UwzeTmBmKfA
 r+SpqPSw8TjXy+JUoeQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165513_974790_B8737044 
X-CRM114-Status: GOOD (  15.11  )
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

This series extends the generic Qualcomm MIPI CSI2 PHY driver
(drivers/phy/qualcomm/phy-qcom-mipi-csi2-*) with three additional
CSIPHY variants: SA8775P, QCS8300 and SC7280. The driver currently 
only supports x1e80100; these SoCs let CAMSS consume the CSIPHY through 
the common PHY framework instead of the CSIPHY logic embedded in the 
legacy in-tree CAMSS driver.

All three targets share one hardware trait that x1e80100 does not:
each has a single CSIPHY power-domain ("top", the Titan Top GDSC)
instead of three. Patch 1 fixes a latent bug this exposes: for a
single-power-domain device, the generic platform-bus code
auto-attaches the domain before probe() runs, so the driver's own
unconditional devm_pm_domain_attach_list() call fails with -EEXIST.
x1e80100 never hit this because auto-attach only applies when there
is exactly one power-domain phandle. This fix is a prerequisite for
every patch that follows and is kept first per bisectability.

The remaining patches add each SoC as its own variant, per the usual
split of core/generic changes from SoC-specific data:

 - Patches 2-3 add the devicetree binding for SA8775P, then extend it
   to QCS8300, which reuses the exact same CSIPHY (same D-PHY register
   layout, common-control offset and clock set) as a second compatible
   string in one schema rather than a duplicate file.

 - Patch 4 adds the SA8775P driver-side soc_cfg (register init sequence
   ported from the legacy camss-csiphy-3ph-1-0.c table, clocks and
   power-domain), and generalises the previously-hardcoded "timer"/
   "core" clock-name string literals in the probe path into per-SoC
   soc_cfg fields so other SoCs can declare their own.

 - Patch 5 binds QCS8300 to the same soc_cfg added in patch 4 -- no new
   register data or power-domain wiring is needed.

 - Patches 6-7 repeat the binding + driver split for SC7280, which has
   its own register set and only two clocks.

Tested on sa8775p, qcs8300 and sc7280.

Depends-on: https://lore.kernel.org/all/20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org/
Depends-on: https://lore.kernel.org/all/20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org/

Anusha Arun Nandi (7):
  phy: qcom-mipi-csi2: fix -EEXIST probe failure on single power-domain
    SoCs
  dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy schema
  dt-bindings: phy: qcom: Add qcs8300 to the CSI2 PHY schema
  phy: qcom-mipi-csi2: Add sa8775p D-PHY support
  phy: qcom-mipi-csi2: Add qcs8300 CSI2 PHY support
  dt-bindings: phy: qcom: Add qcom,sc7280-csi2-phy schema
  phy: qcom-mipi-csi2: Add sc7280 D-PHY provider

 .../bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 175 ++++++++++++
 .../bindings/phy/qcom,sc7280-csi2-phy.yaml    | 169 ++++++++++++
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 251 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |  31 ++-
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   5 +
 5 files changed, 622 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7280-csi2-phy.yaml
--
base-commit: b38d06ad1e13c32970d58039c154f009b81a3368
change-id: 20250710-x1e-csi2-phy-f6434b651d3a
base-commit: 617b69946d330ed334861a3cc2660966e8c14b2c
change-id: 20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-1506f74bbd3a

Best regards,
-- 
Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
