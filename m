Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77641CCD185
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 02:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGtUdFQn7D3I/XMp+bdwDzzukWs9WOKgbfj09PFMQgA=; b=GRRWQHzNAXhT9w
	h4SjypJqsKPY4RcQt60Aj10Y4UrXkl2qRdodR36OiFKgbhcM0/dNKlWx5bPpqmUKci8w3mywQ1X8j
	LewXmtHcPeAwGA9gfT/Fb363SgWEPXRgwWqGDgIaM3eWa+RthQXn28PQDIpw78ITjoKNksgme/N3J
	sFvbQDHNNHPBwDKL6t2DDtwpVTilFdP+396PQvSXvNt1pv7ovjDrPo6yZYQJ5NocWWAuXb6J5UBS6
	b33QYD18205+HabIPeZzYP0pFWn9borTTeRyNXXAA65hkPGE9m9UxS0RIhlvm13xmDl9fUb2udz1b
	SRp4u5/dfnlGjkPmUgRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ULI-0000000Ewfa-0tV8;
	Tue, 14 Oct 2025 02:00:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ULF-0000000Ewf8-3plz
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 02:00:47 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDMQp021212
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 02:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MLgxIENZ2R89bUot9QQ1S92TKgSyswfQZ1AW/g+iuO4=; b=nq2ymSzxKgLEUi5q
	Fmb7sea5GlWbiHtkJLiGw04wp9AYPZn/VgezGmAvCr5uHhLCyWW7AJd1plfdUNhc
	rbExRX+QSO+y2GC6DeMULYcAIkLcHQDIoZucYncE4oEB66yNlkv0MeU01E2Eak7u
	/ASKuJFhrCKeTDaDo3rSwKL6wZRTkQI2Kb6I9hP+B/4IvI8tKvFckyLT9q6gGCr7
	tAP8jugRv8aF/ZUJUFNY63UOB5uwer+CUq6FraKUj4PHX6F8HYhPjE+5nMw1/vVQ
	Q1Kx659iEqIcB4tc4sA9xlGf1r0B2oueSbpy8zie2on+5q9Ahq2YVYraUImpl1Ei
	MXuufQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0bxrbp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 02:00:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-79e43c51e6fso513591b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 19:00:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760407244; x=1761012044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MLgxIENZ2R89bUot9QQ1S92TKgSyswfQZ1AW/g+iuO4=;
        b=a+aVaHyRdfADuj1e0/86O+Mytjcmz9G8QOyWInT+gkmPs9KgFhp9ROPOm1Nco+shDI
         94XHxgyNXz38B8lSVD7PcgZDsQINDCPhJHHNEK9VTalR2rMr4q8sxG4HD/8Jeu+NDCj8
         OeX8WadPGyHZLkG0OzCXRpPOGNoZ4Z8Ms86TdpY1x7OeN1nN+ecpGuoSuhyehqM6htSy
         SI/K7IttH7gZO5F/hzjZwsZLOHZjZ5VQcf/SPdjxCSROYp/3CQX5MAAUQJFS1gBENAGt
         R4oDSBd9M1SMX1IoVAXJzQVYDVBOpgow5mSZoMl6LwpdHZM4IZh9yK/Yaprp/abBuKCD
         1hUw==
X-Forwarded-Encrypted: i=1; AJvYcCUUlcAlwQXZXa2JqtXhwnQtKXk/V/9XBk+q4bpo+oLeGMv+viZHGEegKQqEvv/NfootSSS5GukH1rU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZU5Qf222Gh84nF35Kl99MvdlhcVnMIYzqK1Yn1nDOc1x/A61z
	BMsZ8pX1SFHoS3af1tom+sbL0i4xBiavkMTP1BIDHLU3nWD8khGunApAI+6KsnExqD2P9pg6jy8
	ud86IaABFDWev+COu92/ZqCRrrPxAFUtRTLkDaVaIu5mMhPeHlNB8/D1dzaoc0FYfPIN5
X-Gm-Gg: ASbGncvo1vg1DrwPGi9HlJNY3RkY3KxiZZbRbhUiWLK0/+vcSyRKQoa3pMRfVCiH3eA
	Q0oB1Ed3y1WliTQb9vSEx1dyDjir5+sxbynuo+N+jW6aHY5QpWNjNJMF4nwvZ2Oa2qocAO4CeA+
	IDSfSS/qulPLKqPqRJ02tiJm3IeMIIdtYGV0ffa5pF5hj17WjfVN3MTzHcFX2Iokxjqf3AXg2BY
	q6P6IihGa1EVRFfgNlGfg7MabAbkYE0GQ937s6PLywXvr7lPjdXN1pv4GImvLN32m9bmO2S15so
	8Q0BQZdZKK65VdGAWVg/9mTipAtXE4Q99IGm0jNbE/8XOZhEfCptziUyoEXH0GFBx7fEkRZhmGU
	3WQT23FHi9m5DgzXiHoF64ViHeAQSOw==
X-Received: by 2002:a05:6a00:3e25:b0:77f:2b7d:ee01 with SMTP id d2e1a72fcca58-79396e6902emr28455836b3a.1.1760407243585;
        Mon, 13 Oct 2025 19:00:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2lp7WYqpQQEvlMh5VIkBpxmzWMyfuY4bZZbU3xd5R2fAco236d4BOgMZcSwP2nYK88hnexQ==
X-Received: by 2002:a05:6a00:3e25:b0:77f:2b7d:ee01 with SMTP id d2e1a72fcca58-79396e6902emr28455772b3a.1.1760407243059;
        Mon, 13 Oct 2025 19:00:43 -0700 (PDT)
Received: from [10.133.33.141] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb116basm13161398b3a.30.2025.10.13.19.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 19:00:42 -0700 (PDT)
Message-ID: <c9cb2086-8826-40e4-989f-1bb1335ac4ef@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 10:00:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/5] pci: qcom: Add QCS8300 PCIe support
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
References: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: ceWFz3HJANt_SUv7-15K5nB9daRlS0xz
X-Proofpoint-ORIG-GUID: ceWFz3HJANt_SUv7-15K5nB9daRlS0xz
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68edaecc cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8
 a=IHEL40AIkIxnPEiLsFYA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX96I3q173hLQk
 gMFi46S+OLpKib0zJ0dYK/ZaHn05X/9hEJYuaH3aIVoLfxzqsnD2zmFV3um6cafOqaDo3iH8xZG
 jvRLKge0mguUUMeqo2lybUi18ktVRVTWqXhic9GqRqALy+WmzzVrYLAL7SZbkOewonvWIJptp0m
 ihb/HrskPrye1Hp2KUps+G5ptAog8OPUaGlSJgMgMQpuWRESin4IC7EXoUxe3Y1gpc0qXsv7A1Q
 jpBm8i4EluVuQh6eVo1jzNeY4VhHYyxTbyYm/9DMKOTyh0EdeS4JxcbMaDGXMGs4kDlBnyU1AOr
 GOYv977V2gY/zxnOMBZcTtDIWN97V+rrewDfzsGY8+8FT9WIlw3SJMA4RLH8RkpRY2mzK+6LPip
 V1EcVnNKv9we6TkMbykcCgEOsDGyqw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_190045_969538_B20B483C 
X-CRM114-Status: GOOD (  21.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 9/8/2025 3:38 PM, Ziyue Zhang wrote:
> This series depend on this patch
> https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/
>
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
>
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v13:
> - Fix dtb error
> - Link to v12: https://lore.kernel.org/all/20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v12:
> - rebased pcie phy bindings
> - Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v11:
> - move phy/perst/wake to pcie bridge node (Mani)
> - Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v10:
> - Update PHY max_items (Johan)
> - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v9:
> - Fix DTB error (Vinod)
> - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> - Add Fixes tag to phy change (Johan)
> - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v7:
> - rebase qcs8300-ride.dtsi change to solve conflicts.
> - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v6:
> - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> - Update QCS8300 and sa8775p phy dt, remove aux clock.
> - Fixed compile error found by kernel test robot
> - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
>
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
>
> Ziyue Zhang (5):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>      for qcs8300
>    arm64: dts: qcom: qcs8300: enable pcie0
>    arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>    arm64: dts: qcom: qcs8300: enable pcie1
>    arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
>   3 files changed, 394 insertions(+), 17 deletions(-)
>
>
> base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c

Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
