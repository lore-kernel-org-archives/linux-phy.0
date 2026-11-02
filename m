Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B9E60A2608
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0xOHzi1H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QbhJ8zdz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KAHozLJW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dDHL7e97unc/RjKWm2WgBrNiILsXrjdN5PkUQyuFC9w=; b=0xOHzi1HB7uUGu52q+UgvCt7Sz
	NsHTIx7PCYvRsfWm8lYWocaB+7Wi5qlkEkWaeqE20oLfBcHIHfvFdVKxxYfofJQcXlcY4kGX3peOr
	o/AF/VT644/hw8mQqpkbv2iAYQ40bAsFyh8zgK7deXuGmGplazbJaINqAk6YuLZEVEit67H/1gBqR
	rGDjKHbSPS8qMzGVL/5tLieBbQnztGiOedA51lDUhIOt5qoiS1RYGCM/eaNO2cOyIHuZWGJ62Ooan
	iixGRhkSKMaBXE6aT9MtIWUTcd6FxRogfoAq5bzF3ExJXocIpavAPrSqzI0YM6lypHRQBv+yjXlqK
	MI1WFaYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsBA-0000000GdGj-05ga;
	Mon, 02 Nov 2026 13:34:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsB5-0000000Gd95-0cUX
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:34:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A2DAeZA2360160
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 13:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MB707T6hLoLZTLTI1Pwt9CEHJrH1f9G0GJj9GnzQPec=; b=QbhJ8zdzy6f33Sn0
	3+O2p8WWJKxzMRVwYycuUnhUdMHdh/MFByYWGx9/h2ycw9X2QmOkkhaMG5JZ/4K4
	H/A/XYGkbwj1oFL6PX3r0Zn33Y4l4f8zdBFEuQBU29vZ1VrjzO2XR8YTsKnZxNFW
	3ok+D8kwTW6PZCj1/ydDYDilvSsAOxjAbL3oc1u1q7fnkTwI0z24f364GxQEIQiy
	CkraZRSECqqw5p9RIm6625lW43d04XAjdXU+16DGcDHMirYT3kSOMPFGU2JJZryO
	iX9QnAD24wq/wVIe6ZeW8p4+DKN0baBLo/MNcUIlsojlcAEUpDlfNjh2fzPTUsv5
	rPDhvQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpky4hvg2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 13:34:22 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5ec78f43e7fso58087e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 05:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793626461; x=1794231261; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MB707T6hLoLZTLTI1Pwt9CEHJrH1f9G0GJj9GnzQPec=;
        b=KAHozLJWtCJWIQYrtIZPo8cl2YUM9pc1RxrZqQxMJ7lWitb4JcWntw9Kvz7ZYzDlpU
         OOTKkpsIlVSVqDAA2PHj1nzRccrZ7F7s2lkVWPNi8UqDzV6i/ksh4IUXcKUoGzVwfqkf
         gzrIhPk8gK/JJ4ju6rmlVmnVS9YXPGXVi6wkGGP3s8Brcd7gaVdG1MJw1gxmZz4xDx1i
         xpP0ZbMySf9uE/98VjYReUI3PTnWkLRGFjarkbHXqtN305SrhTQnhrwqwzeN1gzbs+mj
         t6kuOb4heHgggx6R4U8LvFOrFTcZNdQ4CmJzTdCOhMt7/kN5HJJkaCNaMIkhRGtg/AVA
         f7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793626461; x=1794231261;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MB707T6hLoLZTLTI1Pwt9CEHJrH1f9G0GJj9GnzQPec=;
        b=LZkWUoaW+qlwODHm9IioymCSzGIKz32Mnjt7Yez3D5BQAO+NYanSUksYOFbSngPTDv
         fOypg8IkUQ/y/AJCbW5mALrtjhUYk5EZk+rpCFoWn+o2wp2LMUqvdjXkMzohHr4mCsY0
         IQDaNagHq3GVk3XxWaceW+LAAaN2HJkUfPhicErRICYRbMWgwkAVqRGUPD+3Qz4XtKtc
         YLSgMfI/5veRduyCE34E7eTnivdbyAh0ftC9zNcEwcMPnX93d1pTjMSDBNmucMkPt03P
         2l7qtRYpLpUgu+aOn8nCQw3IQQn1tT5W6OWawx3CArFY/saxMyjQFE9QdjiHvX9u7hsc
         JQgw==
X-Forwarded-Encrypted: i=1; AKwUvBwMql6HkVXVOelgylSfgrGWUIHnkgEyY9EQga7FRGu1xMGAil4WEgbfu5tV1lJNTfET3fv11qRSsPA=@lists.infradead.org
X-Gm-Message-State: APuU4Z+2+D7Z1XNT+yrKJDRLt81vn0q9kSV/j30cgjlQqCNDwl4ZYxCc
	HUDItVzAa79hr7MiNQs/4cXXindYfBe1W5aIwsll9hUQ+D4SoROW7bWd47oXjfHxxpe03RknHBw
	FqUXsT2zFW5dpeH4sj+IfwpxCM/W9YPopT16PTF5QGTBwWmUVhEXxgHB/EW5+57YE4aLO
X-Gm-Gg: AYBFou0Iwxgd1qJrzXtRDX0lz8Cz72R4CDkwGwBALvR8mu/5EOSQ8J0pJFBY0Mm2EsZ
	08YNEt8YlP+S+jb23Vj/s+JAZ2qq1nJSPgchR0fGNNPYhezhdipv/NSocrlWmfZftVoBy0XTxOr
	Q0ARAxOcMy9WEEfhj3FhSsGiOu2ORiNuusOLLbVuDca/h5/ULGOW5tV4oMKA/1N7HdaHtTBVHcr
	C9dYZt/k9d/2Cs58zVdB2f0dxczvyAHylUeIZg1YqQ7CnBBELr1ef/uRi6M5JgCgJmrWqxar5Uo
	TnLEmvn3qVu/pnih0vfDUhxOhq5/0AxKbzKBSjMbzJE/L7zbm1XQpOvoqmMYAt2SyZTXG6hFJBb
	ZQ3uWF/9gpdyR86AMEpBVRkn3H1tV/wghqSsU1S42ANG4/l57fcppLeCXfueGlmKluJq75zI=
X-Received: by 2002:a05:6102:2004:b0:7c8:3b8c:82ae with SMTP id ada2fe7eead31-7d07255715emr3358548137.2.1793626461631;
        Mon, 02 Nov 2026 05:34:21 -0800 (PST)
X-Received: by 2002:a05:6102:2004:b0:7c8:3b8c:82ae with SMTP id ada2fe7eead31-7d07255715emr3358539137.2.1793626461135;
        Mon, 02 Nov 2026 05:34:21 -0800 (PST)
Received: from [192.168.226.248] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b4eca214fdsm3219168a12.36.2026.11.02.05.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 05:34:20 -0800 (PST)
Message-ID: <6cd9240d-5628-4c35-b7ca-bbbae7f62fe9@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 14:34:18 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Leave the USB PCS alone in
 DP-only mode
To: Joonhoe Kim <26rote@gmail.com>, vkoul@kernel.org
Cc: neil.armstrong@linaro.org, mani@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, val@packett.cool,
        wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261023123512.1912-1-26rote@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261023123512.1912-1-26rote@gmail.com>
X-Proofpoint-ORIG-GUID: 2SNcJnLF2UMEJNwXKSVzxQnPDifgUeDD
X-Proofpoint-GUID: 2SNcJnLF2UMEJNwXKSVzxQnPDifgUeDD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA1MyBTYWx0ZWRfX73bFP7qX9P1r
 hqKAqM9Huuoe5Y+GGoILpS5nKxkKhPNMnNjzhq5TsX1aRbB5NxLmBeRwL0BU8VqZqT7u3L8mHV3
 gAAG7xBGhGB6ISX4irYbSFXO5dVv98c=
X-Authority-Analysis: v=2.4 cv=QoHLTlyd c=1 sm=1 tr=0 ts=6ae8915e cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=u3WzlVLRiEZ43SCRuFYA:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA1MyBTYWx0ZWRfX/ix+eJtzkUfn
 km0zYj74r1K8f9irHMta/me3fj5kTutX653Z5+Y58VyLBn8RJZDXHM5ZadRdfIitEakN+kyDuJP
 cRFnJQocAXcILvKcWQ5kxN0AvjkfjIKBln4vCBJTz7ED6DRIQWjQKlC7PGZj8phuJ2wxjcNT8xI
 SlA0WxgzXjqwLNXuncQQaOXXEF/N/CThVlWH5ofz7SbJGQywL7LR77+FPL1uQxOSyNrsaG/DTBv
 3TCQD5R6bzX2JjV0rkzsz/0rBgJAfDyYSIfa3mgsvh/HLtuajCcXHv4NZ6MqYthYrTMBCdzEesG
 y33mfMj6X41tM5JPdUYrUMl0IX16dEHl+n0rW2Ikw4qhqDj6Q9eU85bdcdU+kRzy9P8oEQ3h+c8
 epV7k2sR7YoZOlySH322tbUhGoc7bIRXi+ZcXUY4R6wsg110njY5GD7dHuVnu1/Rk/ocatJFTdE
 1o0AY/CO/zwJ2OQTb0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-11-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_053423_220595_221A4718 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/23/26 2:35 PM, Joonhoe Kim wrote:
> In DP-only mode (DisplayPort pin assignments C and E) all four lanes
> belong to the DisplayPort PHY and the USB PCS stays powered down.
> Three paths still touch the USB PCS in this state:
> 
> - The USB controller can exit and re-init its PHY in DP-only mode, e.g.
>   across a system suspend that loses power. qmp_combo_usb_init() then
>   programs the USB serdes, lane and PCS tables over the DisplayPort
>   configuration and times out waiting for PHYSTATUS, and
>   qmp_combo_usb_exit() resets and powers down a PCS that is not in use.
> - qmp_combo_typec_switch_set() powers the USB PCS off and on when the
>   orientation changes in DP-only mode, e.g. when a DP-only sink is
>   plugged in the other way round while the mux is still in DP-only
>   mode.
> - qmp_combo_reconfigure_phy() powers the USB PCS off again when the
>   port leaves DP-only mode.
> 
> Skip the USB PCS in these paths in DP-only mode. Keep the
> qmp_combo_com_init()/qmp_combo_com_exit() reference and usb_init_count,
> so that qmp_combo_reconfigure_phy() powers the USB PCS up when the port
> leaves DP-only mode.
> 
> On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
> in pin assignment C, resume from s2idle fails with "phy initialization
> timed-out", the dwc3 resume returns -110 and the following xHCI resume
> hangs the system.

This sounds like a gap in the DWC3 driver, we should bail out of r/w
any registers if resume failed

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
