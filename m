Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB771606A32A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 10:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=elYWzen1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lBEkQFga;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=X6B3vbZH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/lr4mY4bXNHv51om8WWAv3r60JAiilL7LePVv7z90Bk=; b=elYWzen1N7bcu1RaVoj4Bben35
	H91wIvXapY4CWWRtfeLKLSDG9GlEu01Li160sxik7jPnTNY2O00ElP8VbF+uAR/yUu/+bZ5zgUkL5
	x6e6Rq6c1ATqa+FqE99+QUJac15UCjMhHcYjvaEPCdqHg+fboU+ZBqFUV4ygxnICwxAqlZ3c/FitE
	K9OSMmsy8Nuw+NQE93btFPOMvR72DKVl8WK7hSihW4cSnZ+pWeaKi+ihE0nGuFqX5nlTemFmpWhJo
	zNlyU7W1tWb6uFhUYUVvHNZvnMDYm4LOyhQYddwvZj+i+Ux9DgBdz58ShkuErlnKeP4FUhNI/N8Ut
	fHUM2jzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAck-00000009W4I-2hIJ;
	Wed, 25 Nov 2026 10:53:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAce-00000009W34-0tXm
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 10:53:10 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP9mGc13126484
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 10:53:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FebbI9F5mjaTpQVwpaWCeaxrYNjsbfM5/tqyvZhTU4w=; b=lBEkQFgas7Td87xj
	PgUMKCXYiObvlo2EfLiAxp8KoE/szjO0b6T8LjOQSnkFKFOE3hAxgjDE65uVONjb
	vftvXpejW2kREFvhQ591qFGCLo1Rnwvsm+xnPcDldNA6IxQSg7fImdyXSo0q2f4Y
	pyB+LAo0dUSj2Qx+ZYtLCWJDDd9OAaVCLfiwEeoHtqmYb6Dmafm6vQ0x9ASB6umD
	8+V+wqp3fpMH0V3RvExvJoX2obuj+19E6GkPz+dR3YeHSDOKvODytk4MSQ97wliU
	azcMMIGs52cFiInelru1HseH9/VI3JzU8CsMnrgdyjFgtBr9TCdCYJ96JVoekx3B
	ahD1Yw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5eydbskp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 10:53:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-94993a54a73so50951185a.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 02:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795603986; x=1796208786; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FebbI9F5mjaTpQVwpaWCeaxrYNjsbfM5/tqyvZhTU4w=;
        b=X6B3vbZHH5QmnbdWHJx0aP0tRwciMU0Xw5Owdy5tvGKYy0Ho1/JCOu221gfXvgxxts
         MjtpACVlrTLUfUSxOoJfIiTayKkb76+bMhhrKuPelWua+IOfQsaNaplWCKFByUOfVuek
         gunrs8+zqJjP6m1HYH3XEMRLjmeNf8qkxvo2C1YuEGbx/eiG1S46v73l6C2YF4QrYbWx
         JyXat4I/Dcffy0aGC+VMmAMVCx87Nvvxp6lHP44CD7fXIdM0J0GiBzUIgjLsc+zMf2q7
         Gm2L74F1dTAjwMHPtUYi6CE7OY1kVvfD/NiOC9YuHGejjzhjHoJ5nVfFs+h0bVBLDDVn
         WLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795603986; x=1796208786;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FebbI9F5mjaTpQVwpaWCeaxrYNjsbfM5/tqyvZhTU4w=;
        b=qGd6Lgi0aO7T/YXJb0rNlwoumE5y5RgjEpKWHHvaTDI4Ma8qlQ3cGapgihOJyqSEOm
         pX1+GKmgVOLIa3ZL99AEX242eeEHveLb/GSWHTmrzlS54C/hp1ZJnztU/yOtmgHyYhL3
         eDHRcD0bflYtXwV+IY2DbpekwNnLZb/UxX4cJKG3bVgYKhDhHTBLNwP/fQD5nEceNjVc
         zJE8Bo5SweMb/EQxufascHDFAEE+j9iUBmYB7jnYhGQVJN6TSh8Ik3mrtH3fPWt4X0bO
         dlu9QWFssUy0M71m9pw4eDjSTU1gGNbMkjU+VFJldRVMdmD5jWCMfNTSJFZrSXheT5Qp
         K/5g==
X-Forwarded-Encrypted: i=1; AL+hErGC+BF4R2oh/w+BYpRhX0lrOHHE393950KiQRQrj4s9FtCdn4M2lUNMAmASdR3+PX9nJLlgAMBmORU=@lists.infradead.org
X-Gm-Message-State: APuU4Z8k08EIf3l8dJErU1mKid4Ohspk72mYQ7kGNHBFtb7sTT4ubx/o
	cCvgK5UvtXdPx4duImE/H5f1ohSaeE9O1qgJCLdln/uH77pXZRQJaaxgVGV7ITng2Ky/4cuPEjj
	Qhth2NMfMKAhbKpIE/0LwfX62zmwnrbZqm+PLVUQ97KihwZfDbFL8h8dFCJSJyFTj6qZy
X-Gm-Gg: AZFdTZdNXuBZUGc0L48m9wjI6qROsfOnTd8Kxij0xGT/Zvn426bE8jS9ier1HV2zEeT
	ZGLQ5DH3hosZv0saYfxoPwm2kpp+Oi9VKUyryx9CE+B8o0fQ3V0JftaTehv+i4o7vLMFGqHImLi
	O+jLXzECh1GpGSwWIZ8VBd+sKE40t6/b/9wsXjUGrh6Nj4Te6D7UG8hrmJ8ul5gvP2y6L4/2nts
	GJ5lVZKko9gIWBIZf0JewsurWI9SVjH2XrZdFiUo/ItQYtfJRyLmh8UTKagT9X//ikRrTxKJr9C
	q7OAjnvYsQocaulYL+UDI6JnWIb7uqaLOz2vVPFrOLglSaWy+68hyh4k7C1AnArONWie48JjEqa
	36nVldWdlSbRxv/Grt+IxS2coBwV8pRsom5UVG1HkTOwjDAp4Fj8rCyhZXWqN5pP5NS18Cr0=
X-Received: by 2002:a05:620a:a786:20b0:949:6e6a:e85c with SMTP id af79cd13be357-949ba997457mr3195147485a.4.1795603986586;
        Wed, 25 Nov 2026 02:53:06 -0800 (PST)
X-Received: by 2002:a05:620a:a786:20b0:949:6e6a:e85c with SMTP id af79cd13be357-949ba997457mr3195141985a.4.1795603986021;
        Wed, 25 Nov 2026 02:53:06 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513afe85ecsm617587866b.70.2026.11.25.02.53.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 02:53:05 -0800 (PST)
Message-ID: <15cde6af-0b9f-4a0f-9d21-4e5ca9107a67@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 11:53:02 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] phy: qcom-mipi-csi2: Add Hawi support
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
References: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
 <20261125-hawi-maili-camss-v5-3-1483b7f68dce@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261125-hawi-maili-camss-v5-3-1483b7f68dce@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA0MyBTYWx0ZWRfX5vnUebgMZVt1
 ckAnSaoKd7ekgZWbZ/mNaD+PFP+V0dn+ti2a2tUHns0kyMHNTtc3gRD2+UR4wHJ/gC1XXn1ZPqw
 CzJ6ZGfPUWIUb0Brg4WHWVxKsheAg9c=
X-Proofpoint-ORIG-GUID: _qxttzR02pkA_89T_jlyOamItTOyeDJ1
X-Proofpoint-GUID: _qxttzR02pkA_89T_jlyOamItTOyeDJ1
X-Authority-Analysis: v=2.4 cv=GIGdgeNK c=1 sm=1 tr=0 ts=6b06be13 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Olo7VrpVOdv4N-DtMm0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA0MyBTYWx0ZWRfX4Xmz+kbZZ+Cs
 IRV5E62yrjifAyLNFsvb/7u0SToLHzdDk6U8E7ZJlI9pw05qYMWErj06rSvYnGUgd1EADJCz+4M
 +bxB7G19XSIQWVgZQfVmeYkhUrdSx1lKcOEq6xoSEapROceav73rbWlI3BvgEGTZP/oehrOL9si
 9gm3oa+9cutZTntjj5vU4lMQ7RYDF3S0nz6q2Hc+P8idnENKfrJxKMSssrEqLUZP73gqomiG09b
 FRJfRDF4Mm+CH2kcaXv2+p9SMEfGao8HsAcpd5Us6Dq2sFs07fJL4x63DcIyNA3ayV+kqzBdaTY
 6t8vUcSC/9UD2ppggtxdMThbnJkfCwQ3zGqxEkexQ1gkfsMPyaP+TctdFyNwOHTWfarG9Y9XrtV
 fFAF0/lodwDSZNNrQfas7Uyj9KSRTX3MvicFw7vg5CtBinI1aYBrJw7iTeTWee6lGHDBZ+i9pcj
 OdCrBYAKeVtUdJUDF5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_025308_733561_592B8E97 
X-CRM114-Status: GOOD (  17.29  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/25/26 7:25 AM, Nihal Kumar Gupta wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Add support for the Hawi 2nm CSI-2 D-PHY.
> 
> Reuse the Kaanapali lane table and adjust the data-lane CTRL0 value
> from 0x8e to 0x8c for Hawi-specific tuning. This prevents potential
> stream stalls and SMMU faults.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 136 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   1 +
>  3 files changed, 138 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index ed40934d67eaeba0c6ac7ac75324ac6292fe7d9e..5d91303e0df2e8c5bca3ea8fa2bb831429a8f1ff 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -162,6 +162,126 @@ mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
>  	{.reg_addr = 0x0c64, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
>  };
>  
> +/* 2nm 2PH 2p5Gbps 4 lane DPHY mode, Kaanapali table with data-lane CTRL0 0x8c */

nit: 2ph and DPHY are synonymous, if you rename the struct to something
like lane_regs_hawi_dphy, we no longer need this comment.

As for the override, if its meaning is well-known (the difference is bit1
being set or not), we can add some sort of a booelan override instead of
duplicating the table, maybe

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
