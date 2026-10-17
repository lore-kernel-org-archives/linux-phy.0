Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CBBCC6B2A
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 04:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmrwBnsF7ywo2mLzE6xwhLM01Od8J5tm+1nVEdaqxGI=; b=0DXEe09hkOKJHd
	7rwF1IctTuNmB1NY4ko+z+8iax6gy0cyaYVvYGWC9aKBywpgvKnTqw5T0FztU+hup8bohOhfnHqkq
	GxU0zWzSYB+mpUwLBT38aHksU5+n1lhYdK2JHZl/Rdmu2V9MyZJULKd6zDZ3VVXkCDZlEOICDURG8
	pUNW7NTXJzI3Bt6c+hKnXVciGwyB5TGpm4Ui5DhKtVRaL1zy2PUoSbC2webIsgSTDoqjUK6Or9CVF
	6VJeaL2AqBS9Wo0rrMjSbuW2GFBIc/4yKNsSjbxHJK8qDQ/FfIggVyz/4qZtuWSu65wVvTNXHgE5k
	RrHLaDiN4+0TPGP6LF6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHw4u-00000004Pkz-2RQu;
	Sat, 17 Oct 2026 04:31:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHw4p-00000004PkC-2stE
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 04:31:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69H3PcgO4134198
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 04:31:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TvkbzL8PAAKLjZT+h9nN9vQ8ojaeMfr0aAUam61AdN0=; b=A1uaE9c0J9VVgbIl
	Auz3XiKGk4zkFD2zgBVQGnmU5oLbj2zB5NAHLW0iXuRNmNqKE0u/kNn62pXndGtg
	tGnQ1vHCJDE/8aumOa6lse0CCxBaahW7ndUHclE0CH0WMbEnMmP+W+5N9Wn5UwZ/
	IzlSA/ZRUzuKYW06v2NvXFREDhZcU6EFrZIiJ0bfinZVAdZ9oNtNmFBbhLimxJ6k
	gbiGUWjf8t/MGy06OipZioWB31AICAO10MXdn03gkvoaVGrOsQWTLsbc4NxVK4/a
	Sbp5OFgigQdtjVAX/WHn3rnu4peTuXUqnuc4m6N6DKgBzF3gLBJfXzNisGXOZHyS
	AnpDvw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc13ur3t4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 04:31:22 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso885244eec.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 21:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792211482; x=1792816282; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TvkbzL8PAAKLjZT+h9nN9vQ8ojaeMfr0aAUam61AdN0=;
        b=I380MUtpTa2OjtGxNtj7MJ0laLYojXTTaY9H9kTevGa+XsOSHrGRiGeEmc/1KidQuo
         vGKTB0g2pVTO4wLgTug3c8Oiq1SpkeLIa5aVOeyEoGdFl6BZduSgXb6YD3FX2GtTR2LB
         RA01PJtIm7x1MqeOeTW7NJcluIorlD+Mm/Wr2N8hGzDHd0lwweKyMpvOCJZW2O03ytan
         oY3E0xFLgVez58FS8yxLtOXo3Z+wq70j0iGxNZhW8kpXFkWwMLwY+MKxcimJcIvgK5cf
         yFqixVFB5em5KXTWPV/WZQaTbKLtPG2Qd1211OtlQrevJTEt6Sw2SXfd7fh8ifFoRzJ6
         QF8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792211482; x=1792816282;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TvkbzL8PAAKLjZT+h9nN9vQ8ojaeMfr0aAUam61AdN0=;
        b=hEX6QAbSmqgofTLc6W869iCiFa8Lr1hgwiPx2uyBirzDAgLio42KBlW6iz2dnsX/Mk
         iwNOhi5+phvWEuPSgNpvfC7cVq/JVJEFEwsf/p6h6aZkRw0Nx0vDbaoewOZLQ7N6BEJl
         KnfwmzJkBXu8XUqfnoX1764EkKSS+Mwq1na5UoGuOXkbM1K13YWRdx0RRdVK5pBt/fnl
         ax7fJFPHpbh8rmY4wd6QnLxru8SZUgDvkdfpwsBqSODEVBXrc9mIM1NrMrl8JJL/GuDb
         l9NQDMMp5SyHwkHWjoY3//hQi5tKWWJ/m0QQt7nj2uQDP+7nJgVXH0DwN6g5BfYeLUoS
         Hbug==
X-Forwarded-Encrypted: i=1; AKwUvBzRO0w3DMfkhKZAzg3817RoyKdmKDMO6OdJX13yvBIslXAy1oCaNhi3e+bLpdaIOjp/HEpz+FxD9MU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLy3ZJw6P4UiIRhyaFDQVjTkLh+6qv5aH3j8uD5ZRVQ+Ysl+S3X
	2yWZ1c8IQxzTjc0z2m5RblZ8pTsaEVpHqMYxdmOOsf3JjsaSWfK5reZvSoccNWITmYfBoqE1Z6J
	hGtGKXCdL75vlHiGpTwY5i3NEVrVbvwlYFGywVFoxMmKB4lSlNP92f6rN7fUgiBcmxcvx
X-Gm-Gg: AYBFou1bInsY3JN1fa1rsM1MUa3zJCrGMJrbpRCtwzFtOqFG0VwydJ4pCnnlpJ5/5Df
	BwVvvDhbEZFv/0uKSnlE2tj8m3D6pTYCHQ2XW+ghhZUGsJnU7gmGk35iFrBfrX/U907R0UMBAtn
	5YFLjDW9Wbd2yWuOxu9mLOexDvTO0uimsdsojeyVAStm/AbzC2YMrBIXNmK+VAWK4kbKMuSUiNJ
	YDjn5wK4/ySTzDay9/HrWnHwWZyiqhKa1zlWhlOw4PlbuR5wTygTrgnCgFbeyLBLQ1UTGF0gRuu
	rQsEz3ZjVq9HfuI6dTibLufF3rzaanDhhjRpif8jR65JNW08LFcR2LmJplPei6+cH56+oQrOdtn
	ZCVQPPNs+uso0TcbyUL8D9Thl/fEKInu/wqH9
X-Received: by 2002:a05:7022:ea48:10b0:185:fd0c:4585 with SMTP id a92af1059eb24-185fd0c494bmr1044059c88.33.1792211481391;
        Fri, 16 Oct 2026 21:31:21 -0700 (PDT)
X-Received: by 2002:a05:7022:ea48:10b0:185:fd0c:4585 with SMTP id a92af1059eb24-185fd0c494bmr1044011c88.33.1792211480811;
        Fri, 16 Oct 2026 21:31:20 -0700 (PDT)
Received: from [192.168.1.235] ([47.231.130.140])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-18314b1722asm10673913c88.1.2026.10.16.21.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 21:31:19 -0700 (PDT)
Message-ID: <db2fffdd-634c-4728-a2a6-2ab1816b07ba@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 21:31:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] phy: qcom-mipi-csi2: C-PHY for X1E80100
To: geocausa@gmail.com, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        jigarkumar.zala@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
X-Proofpoint-GUID: gjpBsHv_od69L5kWQB1xqq3p2kmQhUYV
X-Proofpoint-ORIG-GUID: gjpBsHv_od69L5kWQB1xqq3p2kmQhUYV
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDAxNyBTYWx0ZWRfXx5MXETjRnbEM
 SMG3WrxdvoQC+dyfMzhaM906xzYVxO4OYw6UaO4kvm78Eev+NWqU1OkktkfyOY/mOaS1MkuB8Ky
 sO3qZoSUkzdMOU27IE/DjN02adx2gWU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDAxNyBTYWx0ZWRfX4iw1dgswuVAm
 Udb78IQ3GELWspMaHMA34CT/vQPf8MFdvCiPhqbaez8o2v4bSum5yVTqfB3JQldyCAVnpf6+/qA
 83yvISTtGMe43BWlp7OjsaCqhDfY/ptE8kwtEdsSXTkcrw/cpst7NDUSmbbf4d2Wc2CkY2bzWXK
 NKd+llcCOT6q6TDbVX6aAaR5SxkwIlPmRGFnHavKlwlXuTBq2ym1vP4qhjhzvQ8T8PogufwxBKd
 NLTgDneEV48w8gZVjKwbDbfvsz9Uhpx+b7YNncAuFSD8TUVmyH/XVR0Jxr5BUaNrln7NLhZX48e
 KnFpuA5BkpPXvlsASEbRw17f/INrWQmDaqtC6yt314IjAcoyp+mrBghIvWTY343Sj8uVTiHePyL
 2U/328whqwLm3lAUs4tNnZ3GFbILgbaec2VqWHL0brVOGdRyxlJDdkyEFnRqr/i5Ghcoc4kVSQ7
 a5QYCcj4I/Y/CZmZaqw==
X-Authority-Analysis: v=2.4 cv=SKzXx+vH c=1 sm=1 tr=0 ts=6ad2fa1a cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=TcmD64HtHlR11PSYA/r07w==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=-Dc8apNzkz31aRkkPHYA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_213123_850244_5E500DF2 
X-CRM114-Status: GOOD (  33.31  )
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

Hi George,

We've been working on C-PHY enablement for the same qcom-mipi-csi2
driver (SA8775P/QCS8300/SC7280) and have already posted earlier versions
of our series trailing David's patches, ran into the same
file-organisation question this patch raises.
Link:
https://lore.kernel.org/all/20260717231331.1229693-1-anusha.nandi@oss.qualcomm.com/

One structural difference worth syncing on: this patch adds the X1E80100
C-PHY register sequence and hw-ops directly into
phy-qcom-mipi-csi2-3ph-dphy.c, growing the existing D-PHY file. In our
series we split C-PHY hw-ops into a dedicated
phy-qcom-mipi-csi2-3ph-cphy.c (mirroring the existing -3ph-dphy.c
split), so:

1. The D-PHY file stays D-PHY-only and doesn't grow with every new C-PHY
SoC added later.
2. Adding a new SoC's C-PHY register table only touches the C-PHY file,
with no risk of an unrelated D-PHY regression in the same patch/file.
3. The two PHY-type code paths (register tables, lane/polarity handling,
settle-count calc) stay independently reviewable instead of interleaved
in one growing file.

Our series is here:
https://lore.kernel.org/all/20261017035221.3816464-1-anusha.nandi@oss.qualcomm.com/
https://lore.kernel.org/all/20261017040529.3832120-1-anusha.nandi@oss.qualcomm.com/
https://lore.kernel.org/all/20261017041733.3946816-1-anusha.nandi@oss.qualcomm.com/

Happy to discuss further and compare both approaches.

Best Regards,
Anusha Arun Nandi

On 10/16/2026 7:56 AM, George Neacsu via B4 Relay wrote:
> Hi Bryan, Vinod, David,
> 
> The Snapdragon Surface Pro 11's front camera, an IMX681, is on CSIPHY2
> over one MIPI C-PHY trio. linux-next has the CSI2 PHY driver and the CAMSS
> PHY API path, and C-PHY is the piece still missing for this camera. This
> series adds the PHY side:
> 
> 1. PHY_MODE_MIPI_CPHY and C-PHY configuration options in the generic PHY
>    framework, because CAMSS had no way to ask the PHY for C-PHY;
> 2. C-PHY configuration helpers, the analogue of
>    phy_mipi_dphy_get_default_config_for_hsclk();
> 3. a rename of the D-PHY init sequence in qcom-mipi-csi2;
> 4. lane mask and lane polarity helpers in qcom-mipi-csi2, with no
>    functional change;
> 5. fsleep() for the init sequence delays, the same udelay() for the
>    current D-PHY sequence;
> 6. C-PHY in qcom-mipi-csi2, with the X1E80100 sequence taken from
>    Qualcomm's GPL-2.0 downstream header.
> 
> The series is on next-20261015 and applies there on its own. The two
> CAMSS patches that use it build on David's "media: camss: Add support
> for C-PHY configuration on Qualcomm platforms" v9, which is not in
> linux-next yet, so I will send them on top of David's series:
> https://lore.kernel.org/all/20260729-qcom-cphy-v9-0-1f8d9fdab037@ixit.cz/
> 
> Tested on the Surface Pro 11 (X1E80100), booting next-20261015 with this
> series, David's v9 and those two CAMSS patches on top, with CSI2 PHY
> nodes as in Bryan's x1e80100 camera DT v7, CAMSS in PHY API mode, and raw
> capture over RDI:
> - front IMX681 (Sergey's and Andre's v8 driver plus its C-PHY RFC) on
>   CSIPHY2, one C-PHY trio at 2.4 Gsym/s: 3844x2640 at 30 fps, and the
>   sensor's colour bars are byte-identical to the pattern captured with an
>   out-of-tree driver. The settle count is computed, 28 at a 400 MHz
>   timer;
> - rear OV13858 on CSIPHY1, four D-PHY lanes: 29.9 fps.
> On the earlier test setup, linux-next's CAMSS and CSI2 PHY as modules on
> 7.1.5, forcing any settle count from 6 to 48 gave the same frames.
> 
> Open question, from Nihal: the X1E table is Qualcomm's 2.5 Gsps one, and
> downstream picks C-PHY settings by symbol rate. I would keep a single
> table here and add selection by rate when a second rate is needed,
> unless you would rather have the structure now.
> 
> Thanks,
> George
> 
> ---
> Changes in v3:
> - Drop the RFC prefix (Bryan)
> - Test on a linux-next kernel instead of linux-next's modules on 7.1.5
>   (Bryan)
> - phy: u64 and u8 in struct phy_configure_opts_mipi_cphy and the
>   helpers (sashiko); pick up Reviewed-by tags from Loic and Bryan
> - qcom-mipi-csi2: split the lane mask and polarity helpers and the
>   fsleep() change out of the C-PHY patch, each with no functional change
>   for D-PHY
> - qcom-mipi-csi2: write the C-PHY per-trio register addresses with
>   CSIPHY_LN_CTRLn(); the object code is unchanged (David)
> - Link to v2: https://lore.kernel.org/r/20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com
> 
> Changes in v2:
> - Rebase on next-20261015, PHY patches only; the CAMSS patches follow
>   David's series (Bryan)
> - phy: rename lanes to trios (Loic), make symbol_rate unsigned long long
>   so 32-bit can hold rates above 4.29 Gsym/s, and keep Bryan's R-b for
>   that patch
> - phy: new patch with the C-PHY helpers (Bryan, Loic)
> - qcom-mipi-csi2: new patch renaming init_seq/lane_array_size to
>   dphy_init_seq/dphy_lane_array_size (Bryan)
> - qcom-mipi-csi2: rename the C-PHY table to lane_regs_v2_1_2_cphy and
>   shorten its comment (Konrad)
> - qcom-mipi-csi2: no separate bus_type; the endpoint sets phy_mode and
>   set_mode() checks against it (Nihal)
> - qcom-mipi-csi2: if/else instead of the ternaries, one declaration per
>   line, and lanes_enable() split into lane mask and polarity helpers
>   instead of the goto (Bryan, Nihal)
> - qcom-mipi-csi2: configure() uses the helpers and keeps the link
>   frequency, so clocks scale as for D-PHY
> - qcom-mipi-csi2: compute the C-PHY settle count instead of the fixed
>   table value; blank lines between the per-trio blocks; fsleep() for the
>   sequence delays (Nihal)
> - qcom-mipi-csi2: drop the video-interfaces.h include, no longer needed
> - Link to v1: https://lore.kernel.org/r/20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com
> 
> ---
> George Neacsu (6):
>       phy: Add MIPI C-PHY mode and configuration options
>       phy: Add MIPI C-PHY configuration helpers
>       phy: qcom-mipi-csi2: Rename the D-PHY init sequence
>       phy: qcom-mipi-csi2: Add lane mask and lane polarity helpers
>       phy: qcom-mipi-csi2: Use fsleep() for init sequence delays
>       phy: qcom-mipi-csi2: Add C-PHY support for X1E80100
> 
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 228 ++++++++++++++++++---
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  53 ++++-
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   6 +-
>  include/linux/phy/phy-mipi-cphy.h                  |  89 ++++++++
>  include/linux/phy/phy.h                            |   5 +
>  5 files changed, 348 insertions(+), 33 deletions(-)
> ---
> base-commit: b810335a0699d1810683796b0e3ffe8827ddfe6c
> change-id: 20261015-x1e-cphy-rfc-201860c8097f
> 
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
