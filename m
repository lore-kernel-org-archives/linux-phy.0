Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E1606D80B
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 09:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ea+Dur+5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XBgGzfkm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=LZx1mnMS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X9qX9YVaDKN0GryFtI0lgnLG5H5xkYAl5lJ7TWOpo2Q=; b=Ea+Dur+5wmMzCboUNKeCoGPHr+
	1Hc39+QyLQdAcA7qwznmyKIUwuWCMJeM9lmLYTf+gxx8e13DRsKtWCe0fUlPpoojbc6QcVffJz8aF
	4mpcWA7PlzPCp9KUg53Hsi3tBRlL8W6HTBtpT5hODjL8g7Si8DfFIliNC/ECJ151yB92VyTdHQ/cs
	QCbI1D7Ka2pxRXa3DPItpsxohRfCMAS3upeUMTUD9x0zK2Km4AlZz0bYTpBoYuzSg2BT2WbUuDu3q
	XkA4lkuUC0QqR2VF3DA5vV8dIpA7v2d7WGflPkxGhZVaXMmCAotX9KdzkXwbjHjSroHhpKe9A983x
	XxJARPQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBHY-00000001rTl-0DvV;
	Tue, 03 Nov 2026 09:58:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBHT-00000001rT4-1QGV
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 09:58:18 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A37ruY51432133
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 09:58:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m10pz6bgz4a7grQB313xpGgH
	olpNKLCmq7Y75Ebr6sY=; b=XBgGzfkmI2zU/pks3scJQ/zKjRN2l7JRX+Nm7tU9
	xuotO9A0Jwbbux2WcYS9WB8fj0UNjNbyZtm1nrVkkdO0Zi0kiD5P/ynRbvIjFx6E
	DFJ4itFypb699z45BP2wMZfPuDrav9jwwp3iMxR62499Gb/U33bNyQQHoLII/G2d
	/61D433/RAsm+5NFvrWaZ0gPJYmogeVGxOriCsPj3wZjUdK1x2NP1ADD8ILDeLcZ
	5ORJejjuPzAXy0KaXBed7V8qWrx4xscDt+3ipCf5RdoU09TJmY2eAHIfNcHrssMP
	Pyv3jxfxmzpsuIBJeP3ReDd7xV3uo87ETT1bFQI7otNvFg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq08734pr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 09:58:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f37c94ceeso87251385a.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 01:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793699894; x=1794304694; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=m10pz6bgz4a7grQB313xpGgHolpNKLCmq7Y75Ebr6sY=;
        b=LZx1mnMSXB18NRAEhZZpXfROUUHt5JWu85agHhnz8uQNOLYkYgGGJ4rPyx3vced98/
         V3i9syvbKUsvMjl+mmMrK6B3xaturjfn6ldGOirytJjTxF3q0zI/ipdsWX8kQIZsklit
         dVP5KxBNpgydcoxbSpCtRJey3NQwD+tYGSYeXaKnfomgtH3Qt/3eC0SAOB+VtEkmT2On
         XGKUE/vkbyr84gbRIYBr+UWaKo+Z7xzIxxN5Q6m09LNWPvevQSZcEuxCjO/2BHlTltOx
         aZGgn6mud0kJUt2uVnNey49H/nJLq5oLxYgc51Iq4FZokU0+oJRH0h/9Cg9qoIbL/PYK
         7B7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793699894; x=1794304694;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m10pz6bgz4a7grQB313xpGgHolpNKLCmq7Y75Ebr6sY=;
        b=YwslzEEH3vfPgTNiu2e0oNNgiteI9U5StwL5pJ2ZJW1MhAXvrQvfcWObAwtyotTfrR
         53KyREn92zAalfWj+87juNbvLdQO2ogdrry5fM6ObV6v5vbRNvI1TWmq1OfrfZ+TEu6R
         Mhx8jZlpsJRgFmF1sVIcRLPDVMytVDzb0zFMbsg6utrMla3MiHjJfk19wRGvcJCuW0yT
         2K2XdysDQJ4hrYscqv8TZUtXIZqTvKAugadD1C72H+her4dJac5NsQnYecNCeZO72wT9
         9Cay/2qrqhlEPcq+SBkgHZS6M+036iG2QnnGeCBYknCw8/zmaxaPGN1BRvlMPyj7w3RQ
         biRQ==
X-Forwarded-Encrypted: i=1; AKwUvBwtISgHSm/AIziGiuEK2Drfj9s5mI99MH/gyxAA9f5lkujcGn33GIJ95gc+R/nHHbWMNK5LBT/mqKE=@lists.infradead.org
X-Gm-Message-State: APuU4Z+jg25v+TTwnBRWoyOFq5MOcaE4g6NkZG0eTrU1LS5rt5NtE5qj
	1uP7ZD/D4TkUKbzl6qQ1rmIHODcN+E3Jk1pRrkND6ZU7VQFL0i/1IcRkggKB6dhcqwY4zuRLi39
	Cz25QD1Or+J/fBAyzd/PCS5JY7/G+mkqmx+M+4YFLAG6/mN5ewyk01K0C1wz0LL8QrZtM
X-Gm-Gg: AYBFou2Ygdzu3X2Zf1wT9ygJ03AqwLl4jH14WzKYVv/QsrEbL4wr13xydJU7UAitN8j
	cLb4fe2WI9/FLxQCEv4JV1J2JWYva+NVAxuB0lkqV61OXARgjd6wnnUEauLvaekIqdHIyxj3P21
	eQViiVWW2W64SyE8Q2K13ymnc/KXMiqzjGTn3feGShUQaQG/JRb/zNynVSJo4+MNC7bYnqv6EPA
	SwW85yUsZkd6fCqiEkw8025cp8Td4f+w4wlkl+9vTwLXoHxDHhKQw8WGpEbAfuotCKTZgyUfgT6
	I5EiqHWNclJnE4CaCld3rq0fm+8L/axSGUNXl51gIJ5i/vyqX0UVina8Yp0LQDa9oIXPZLlo92O
	x02fT/jnvWdOw/cHtA/GaI4/4INam8hR68xUdfm/guIMxRMhew1CfH0IZgMZyc6c=
X-Received: by 2002:a05:620a:6013:b0:93e:5de7:fd45 with SMTP id af79cd13be357-94413382637mr2082786985a.18.1793699893655;
        Tue, 03 Nov 2026 01:58:13 -0800 (PST)
X-Received: by 2002:a05:620a:6013:b0:93e:5de7:fd45 with SMTP id af79cd13be357-94413382637mr2082784685a.18.1793699893006;
        Tue, 03 Nov 2026 01:58:13 -0800 (PST)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abe7706516sm217341365e9.0.2026.11.03.01.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:58:12 -0800 (PST)
Date: Tue, 3 Nov 2026 11:58:11 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] phy: qcom: qmp-combo: Update Glymur USB3 settings
Message-ID: <76rbzfynxxjfejmlmv5pqn7t5ltrkwfa43hf46kq6lyfeiw7p2@o3oqz2zmtm7w>
References: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
 <20261102-topic-usb3_sequence-v1-1-5b144f5e6865@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102-topic-usb3_sequence-v1-1-5b144f5e6865@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfX1xLRopxPjHsP
 r+iz5rsR0/pzrhhthaOWQ1e91UlHdZ3hgnSGffp4GctBEaQVmNl+QadX3K/8dVfKGm4TFtzTaCb
 JmaEWpjVkDJltLdnkqpDVmivahjG8cw=
X-Authority-Analysis: v=2.4 cv=K9m3jCWI c=1 sm=1 tr=0 ts=6ae9b036 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=fJp4sGKrnHNzjJpNMsEA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfXxc1x42NwFP70
 2P3qT92I0aX1q4s19h621Ws95wKIXybJJP/5v7O1pm/5QuBnF6sCeiVGbImfLuPeksndhXL7Tj3
 /+nTnws2mt4mVhXyXI3Z6x+N6KWuZ8bWN9lO9CJo5rWV1wqIQJ63S8xX1Le3813/YMKKkW1HuiO
 xcqVeqDDaWiBcmKboXjEwgMtrRet8j8jZg3EjmKjEn2ASCfIlpQPpF+hqokwxH4g1wdqshQHC1t
 iBhF2Kb+VP5TawnkSUKNEUvmbcyHVbeIID1xq0/uGyVD8tjdD9TKH2axau/8+7dpY0h+KHt4trc
 Mo9j8m9+unWHeKryKTexf3mUJ4i9IxAiArKCuNt71za8N5nOXciD+EGYVKJrK+GPm6Nt48FGpzr
 k8eH2AueMVDvjqDWTB/m1G/NvGVNRGHlwXatZRsC0JXdV8XtLFEVNUYPrQyWb2xfCTBhtu+Jk5D
 bAzBQAXgl5aBEw3B5mg==
X-Proofpoint-ORIG-GUID: fVZpsKmoJiup29d6s0BMsuCBm3KLxPWs
X-Proofpoint-GUID: fVZpsKmoJiup29d6s0BMsuCBm3KLxPWs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_015815_492197_C8A8491D 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-11-02 14:58:36, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Update the settings to match the latest hardware reference guide.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
