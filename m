Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAE75C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 14:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TO8TnlQ4R6D7jsx2E3e4QR4E8yRyobdxCyncNV9zUjY=; b=RVRfMYoG2mWNh/
	8sJ9WSt8roiN/EAtUUFG9LN3dnVGLyifDulM7hFw1/qPez0rUzm5dUlLre4GFVX/Xy3nFusm66a0g
	g/jwNnVqwiuPusRh4bDSkzgOKDx23DdimVfiWj3Yya4NLKc5W7Ynn2MtUM19JDjO7p8OHQ8C7Mumc
	kFyp9MXKZKGpsTZbMw6I0JQUmQPK/UsWqeq4bTbh22Gs4iyEbbPuOuh1v7y8wr1LiJ0s1YKwVqCcD
	3akT0AGI44wyFGcU0HZVgZoVqR+dYDXDV9K3Ug/FELK1i4sjnPU0AvXL3pefvwqEuvD/PBAyZcb8s
	Y8c2PJJmtY4cZ/8suKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqD1z-00000000rBB-1fUq;
	Fri, 29 Mar 2024 14:16:31 +0000
Received: from mail-dbaeur03on20701.outbound.protection.outlook.com ([2a01:111:f403:260d::701] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqD1v-00000000r7y-0eN8;
	Fri, 29 Mar 2024 14:16:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jp9c7GZEX+XQrJBQdlgZtGQYZ+bC9vseY0nbPAkYBQslV7g01JSxGdR486FWLLx15MkBwd+RPHL1T56dNFN/jHKuO6g2KQC2ovGvZDIWiPRw+xzX6B0fZo0FcEQRkhRCbWqTkj8pO2vKsapd3s1wslPPGq8rfS7D7IsfaQtVAoI6x5WzwkrkVRUeiJB6CUji4VXac1Onx1yexZ+dWM6c9qlq+HwZQtxs63x4cdqjoZWgwhaXUSx+I8ddNYJbCQdLuJLThvNGMULHzTGFW8k7v3QPh3PMsUm+HpH3rdQ+1eqPDChRu/wDOWQmeOgvNJO0nhdk8xaNXcqmgPAsFfs+OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mO4u2miKqmAtK5dNZeHu06GoklhirjrvlOFR68X7ADw=;
 b=SSnwdzhTyIflORsGN/TNZeiz0t/yZPs4n6wOoHyYLUo+92exTwZrPRD8CYoyjCKT6JaWQAlvaV67BlADmBLgdN2yBCkIakhcXzqAyNJsXfnRMmRzbXrji9FXYXRcLw1PGHz+TPfIaa1LzUWo2pSLN9WSuZLdtT5uHazJqGNF0yrYMEtyNMIqNNfJ8csfODo0fp505r+ja0C4SlacTxhY781MU/yEv7iQxqGL+wKIyQ+LrPShXS22nMO7CixCIYHkZXw8mem2M3NNUXnu0sLjG+3BoAPSAjfX+ZDLR0yB7X/65FstU1oguyWh3ttdJmDXEaYTIlOnupqUMjAgW9dfkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mO4u2miKqmAtK5dNZeHu06GoklhirjrvlOFR68X7ADw=;
 b=b8LtGqhX7BMCx5KaAxEWIYomoqSboqjlDSrwIwIRgXHh0/6oK93HfbjZUdRhmEySHfmuAUooTBQBBufDk6c4gvLVsf4aJV4pNglaeHADrUEuaWw0r0EXHCzBESqBwtLdnPeF3dksi8OjnQsGdfrjeA2L70pKCYPTfM3oyHlnNyU=
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AS8PR04MB9512.eurprd04.prod.outlook.com (2603:10a6:20b:40f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.39; Fri, 29 Mar
 2024 14:16:22 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6%3]) with mapi id 15.20.7409.039; Fri, 29 Mar 2024
 14:16:22 +0000
Date: Fri, 29 Mar 2024 10:16:07 -0400
From: Frank Li <Frank.li@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v1 1/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <ZgbNJ3w6rzi7erNt@lizhi-Precision-Tower-5810>
References: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
 <1711699790-16494-2-git-send-email-hongxing.zhu@nxp.com>
Content-Disposition: inline
In-Reply-To: <1711699790-16494-2-git-send-email-hongxing.zhu@nxp.com>
X-ClientProxiedBy: BYAPR05CA0084.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::25) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AS8PR04MB9512:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ho4Kt2WpSKnL16t9UhZpcKkl/8NKMgSEVkf43s6OkG4nPmVWrR+GZbaJlk+RoZ2vxAkVnMrg9v9aKwtnn8RhNZVrsc7zjQ1uRL+a50f4wGZ40edORAYz3Pv8HG37w2ozO3IFotE9TLws3bRSrO3SX73aS2/Bh2p1fWCWSjkwnxh8FZ+FlgMbdNYafLPjKb8B5SElZEqFUpp+ANkXiGU+nL67cHInJxBZYvdjCUNG4jhWgf5EQf+m5OgJqJaqeI9teYaQUuHvjuZwWR6868MjrIS0Y3iVMEIR6+ZCitgAN8XdfWf8JN4oTCUQpVwdMkvaV38Tfws1qABkaF9RwkOLI7XmBlpWtlJ+NvzTfwrQVdrmZqdU6E/o3U2Kzsch+Ro9x9xfxdf6TjXggiiP56PCw0kUGVJw60PZRMDSzoOptKPqCa+9yx8e7wvnIFl3yP5CePzd7nKcryBOMPTayKdkBQLXQ3VuPOgI4aGerY0Pb2PX3PXutx1/cdXyA7ql1xAov7hpU6qhL4uQiqgnJlO23EcXJtNPlLs5WvVHOU0XyydPrfxpmE2n4xhdApWD5XZKCzOg0Jnjx5Eue+zBqqP8aSswemKS5qApSGz8Q3z6AZ42dBpvRZXeajD638TE7N+EfTOTlypWYXtQ2DH3rCnWp294FaBtdCUqxu9g5jPQ5/U=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(52116005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CHS+j97RRplYIpSG8rGm0kiAHAwxPiOikyHLGVui9BxuWbLR8OyqAJ0TUvz7?=
 =?us-ascii?Q?0HPd3yw5yq0PshsBOHqLOUHZbKndWf09u4w0cQBX87cLD2S3sgLtFJWTFD5K?=
 =?us-ascii?Q?HsdkhTd9pQK0fzg3mp9IDuXLogTJgZjDC1uuOaxLI++LqoP7i1p0aOfSUIoM?=
 =?us-ascii?Q?N7u5vk7sEqa4aBrSoFzTGFw/wHrG+JWCwBTH8uM0eaYma59IV/71qAz7VPSl?=
 =?us-ascii?Q?c238vgAmLU5y8dEFGLum+NmdThP8UQoqirrHiehZU8lR2a5n8fU7Gk+D23JW?=
 =?us-ascii?Q?6mvJZalB3fBtJYK0KsuoL/6BZ6s0/MJgMrtc9MEsQGG+OEPS7IW4YHzJHHYC?=
 =?us-ascii?Q?VbsL0ZsnOc08gj/tJBsXhdQphVTtXHVVXd+KcEEeacboawHWVcn1JFsNtkDm?=
 =?us-ascii?Q?fcuyzeJqPz0Y0FbJgdN+FMG/4IMCNBwTrTNnBQXVKU2ClZzfg6Z910ASEtnE?=
 =?us-ascii?Q?suRfJWWELXqzVo8CM9NgzVS+YyrotcDl82/gyLYQXqnUnT4/RETd70HZ0BCf?=
 =?us-ascii?Q?q6T4BpEO/ptEFpIxs+XQnrcVLvYgijMFQAkXSsSNu+OD6Z63+VEFok28Gi8r?=
 =?us-ascii?Q?XJEcZIxpJb/VfwkgZ1P8rH186zERG4JUMFOvhhAga9LTtruDyV8erWjxRQv1?=
 =?us-ascii?Q?UlynW3oqt7wDxm+5w94kw4uhjrqOQP5H+TMiV1O8PKOivdWxV6GAVxV/KxnH?=
 =?us-ascii?Q?gDBGH3Abn2R7Lckyp6WrqIeZSg8i1EOyRCu360XZC79UDiqJxccTAlhMsrji?=
 =?us-ascii?Q?JoGSB+/5HfNjL+DZ0lYZ6V9siB+F7MMBAFs1rghfeqwgM+OhmQ8yGoHBn3Rf?=
 =?us-ascii?Q?hhoE4b0OrqO7OTxJ8H0ASBeSzLqNzabNmuFOh/Zm+/89vI+yBE7ozPqAn9gM?=
 =?us-ascii?Q?OU2Faossp7zAku4XtEOiZtYVcSnTKRhk6eFR7Xj/pXMycZtQK1FtdV7/89fm?=
 =?us-ascii?Q?feBI/5SWPkTCZD5mLOX4dS2GDg2/rpy5v+YOn+6daZkF1/QpolBeUs1dv2RO?=
 =?us-ascii?Q?3MbiRIHtocBznH4QcFUMCQZqb0/lb3vfaNDSv8jJR8p5hOiDHStg7M86Cs+T?=
 =?us-ascii?Q?j6YuV7ghFb22W7cuEhTBBYOfCsVMla+9WnAoH1EYSOxG9cTdQ7caY5beXmlF?=
 =?us-ascii?Q?ncOmc3wx5q4C3A3eWj4bCVIe08XHTae1+vR3pKJgdTR5Zkwfn9uP4yn3bqfN?=
 =?us-ascii?Q?Ehv8+CvKVJwvfrrBa9B2r2ulQ0TetN7P2D0yNdRS+oKTSocx/vfggJHezJah?=
 =?us-ascii?Q?qcippoBYVeHjv/xhB3UOGNVZqxteTIsks1rBHhmgFGVbvTgx5TVpZWEr1MkJ?=
 =?us-ascii?Q?f2rtV0nvAjYQJXYVFZO3hlj33qhEcTqxo13pJrif4tBlvNUXUAByP0uX4IPR?=
 =?us-ascii?Q?PZmSWhzjpDUyF8Q5HVZR4F4gptIdjxnhthh2DCkmstqKdByGhbWocIy9sxHs?=
 =?us-ascii?Q?r62GWvvDpyx9leFrnkJGTLXdRJScwNDcLLJ7SS5E7w+P2OJrk3Ct3R1o9SZL?=
 =?us-ascii?Q?vSzhJOb/HnMMEYqo1i/hgcgFb5xl9I9Nj6JAqFrQD88TrErWgZ3WHCpb7rQ3?=
 =?us-ascii?Q?GUybuwS/XyltagaCcxoR56NDBF+pp6rH0n6jYEM9?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 061d2bff-05d8-4e30-a29b-08dc4ffacf68
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 14:16:22.0763
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKawmL7AwjurCRxEoBZGRjCIIuCTV98FY9XGA0p0bWUgDXsRWOiRs3PRBntcz+lLwxK5FRLTHRO1qGKWtikTrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_071627_323523_169A0638 
X-CRM114-Status: GOOD (  20.78  )
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

On Fri, Mar 29, 2024 at 04:09:48PM +0800, Richard Zhu wrote:
> Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> - Use the controller ID to specify which controller is binded to the
> PHY.
> - Introduce one HSIO configuration, mandatory required to set
> "PCIE_AB_SELECT" and "PHY_X1_EPCS_SEL" during the initialization.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8q-hsio.yaml          | 143 ++++++++++++++++++
>  1 file changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
> new file mode 100644
> index 000000000000..506551d4d94a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
> @@ -0,0 +1,143 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8q-hsio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8Q SoC series HSIO SERDES PHY
> +
> +maintainers:
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8qxp-serdes
> +      - fsl,imx8qm-serdes
> +  reg:
> +    minItems: 4
> +    maxItems: 4
> +
> +  "#phy-cells":
> +    const: 3
> +    description: |
> +      The first number defines the ID of the PHY contained in the HSIO macro.
> +      The second defines controller ID binded to the PHY. The third defines the
> +      HSIO configuratons refer to the different use cases. They are defined in
> +      dt-bindings/phy/phy-imx8-pcie.h
> +
> +  reg-names:
> +    items:
> +      - const: reg
> +      - const: phy
> +      - const: ctrl
> +      - const: misc
> +
> +  clocks:
> +    minItems: 5
> +    maxItems: 14
> +
> +  clock-names:
> +    minItems: 5
> +    maxItems: 14
> +
> +  fsl,refclk-pad-mode:
> +    description: |
> +      Specifies the mode of the refclk pad used. It can be UNUSED(PHY
> +      refclock is derived from SoC internal source), INPUT(PHY refclock
> +      is provided externally via the refclk pad) or OUTPUT(PHY refclock
> +      is derived from SoC internal source and provided on the refclk pad).
> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
> +      to be used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2 ]
> +
> +  power-domains:
> +    description: |
> +      i.MX8Q HSIO SerDes power domains. i.MX8QXP has one SerDes power domains.
> +      And i.MX8QM has two.
> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - fsl,refclk-pad-mode
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qxp-serdes
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: apb_pclk0
> +            - const: pclk0
> +            - const: phy0_crr
> +            - const: ctl0_crr
> +            - const: misc_crr
> +        power-domains:
> +          minItems: 1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qm-serdes
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pclk0
> +            - const: pclk1
> +            - const: apb_pclk0
> +            - const: apb_pclk1
> +            - const: pclk2
> +            - const: epcs_tx
> +            - const: epcs_rx
> +            - const: apb_pclk2
> +            - const: phy0_crr
> +            - const: phy1_crr
> +            - const: ctl0_crr
> +            - const: ctl1_crr
> +            - const: ctl2_crr
> +            - const: misc_crr
> +        power-domains:
> +          minItems: 2
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8-clock.h>
> +    #include <dt-bindings/clock/imx8-lpcg.h>
> +    #include <dt-bindings/firmware/imx/rsrc.h>
> +    #include <dt-bindings/phy/phy-imx8-pcie.h>
> +
> +    serdes: phy@5f1a0000 {
> +            compatible = "fsl,imx8qxp-serdes";
> +            reg = <0x5f1a0000 0x10000>,
> +                  <0x5f120000 0x10000>,
> +                  <0x5f140000 0x10000>,
> +                  <0x5f160000 0x10000>;
> +            reg-names = "reg", "phy", "ctrl", "misc";
> +            clocks = <&phyx1_lpcg IMX_LPCG_CLK_0>,
> +                     <&phyx1_lpcg IMX_LPCG_CLK_4>,
> +                     <&phyx1_crr1_lpcg IMX_LPCG_CLK_4>,
> +                     <&pcieb_crr3_lpcg IMX_LPCG_CLK_4>,
> +                     <&misc_crr5_lpcg IMX_LPCG_CLK_4>;
> +            clock-names = "apb_pclk0", "pclk0", "phy0_crr", "ctl0_crr",
> +                          "misc_crr";
> +            power-domains = <&pd IMX_SC_R_SERDES_1>;
> +            #phy-cells = <3>;
> +            status = "disabled";
> +    };
> +...
> -- 
> 2.37.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
